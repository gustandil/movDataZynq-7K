// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module wr_data_dir_adv_Axi_lite_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [31:0]                   base_addr_0,
    output wire [31:0]                   base_addr_1,
    output wire [31:0]                   base_addr_2,
    output wire [31:0]                   base_addr_3,
    output wire [31:0]                   width_img,
    output wire [31:0]                   total_size,
    input  wire [31:0]                   processed_elem,
    input  wire                          processed_elem_ap_vld
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of base_addr_0
//        bit 31~0 - base_addr_0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of base_addr_1
//        bit 31~0 - base_addr_1[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of base_addr_2
//        bit 31~0 - base_addr_2[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of base_addr_3
//        bit 31~0 - base_addr_3[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of width_img
//        bit 31~0 - width_img[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of total_size
//        bit 31~0 - total_size[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of processed_elem
//        bit 31~0 - processed_elem[31:0] (Read)
// 0x44 : Control signal of processed_elem
//        bit 0  - processed_elem_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_BASE_ADDR_0_DATA_0    = 7'h10,
    ADDR_BASE_ADDR_0_CTRL      = 7'h14,
    ADDR_BASE_ADDR_1_DATA_0    = 7'h18,
    ADDR_BASE_ADDR_1_CTRL      = 7'h1c,
    ADDR_BASE_ADDR_2_DATA_0    = 7'h20,
    ADDR_BASE_ADDR_2_CTRL      = 7'h24,
    ADDR_BASE_ADDR_3_DATA_0    = 7'h28,
    ADDR_BASE_ADDR_3_CTRL      = 7'h2c,
    ADDR_WIDTH_IMG_DATA_0      = 7'h30,
    ADDR_WIDTH_IMG_CTRL        = 7'h34,
    ADDR_TOTAL_SIZE_DATA_0     = 7'h38,
    ADDR_TOTAL_SIZE_CTRL       = 7'h3c,
    ADDR_PROCESSED_ELEM_DATA_0 = 7'h40,
    ADDR_PROCESSED_ELEM_CTRL   = 7'h44,
    WRIDLE                     = 2'd0,
    WRDATA                     = 2'd1,
    WRRESP                     = 2'd2,
    WRRESET                    = 2'd3,
    RDIDLE                     = 2'd0,
    RDDATA                     = 2'd1,
    RDRESET                    = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_base_addr_0 = 'b0;
    reg  [31:0]                   int_base_addr_1 = 'b0;
    reg  [31:0]                   int_base_addr_2 = 'b0;
    reg  [31:0]                   int_base_addr_3 = 'b0;
    reg  [31:0]                   int_width_img = 'b0;
    reg  [31:0]                   int_total_size = 'b0;
    reg                           int_processed_elem_ap_vld;
    reg  [31:0]                   int_processed_elem = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_BASE_ADDR_0_DATA_0: begin
                    rdata <= int_base_addr_0[31:0];
                end
                ADDR_BASE_ADDR_1_DATA_0: begin
                    rdata <= int_base_addr_1[31:0];
                end
                ADDR_BASE_ADDR_2_DATA_0: begin
                    rdata <= int_base_addr_2[31:0];
                end
                ADDR_BASE_ADDR_3_DATA_0: begin
                    rdata <= int_base_addr_3[31:0];
                end
                ADDR_WIDTH_IMG_DATA_0: begin
                    rdata <= int_width_img[31:0];
                end
                ADDR_TOTAL_SIZE_DATA_0: begin
                    rdata <= int_total_size[31:0];
                end
                ADDR_PROCESSED_ELEM_DATA_0: begin
                    rdata <= int_processed_elem[31:0];
                end
                ADDR_PROCESSED_ELEM_CTRL: begin
                    rdata[0] <= int_processed_elem_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign base_addr_0 = int_base_addr_0;
assign base_addr_1 = int_base_addr_1;
assign base_addr_2 = int_base_addr_2;
assign base_addr_3 = int_base_addr_3;
assign width_img   = int_width_img;
assign total_size  = int_total_size;
// int_base_addr_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_base_addr_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BASE_ADDR_0_DATA_0)
            int_base_addr_0[31:0] <= (WDATA[31:0] & wmask) | (int_base_addr_0[31:0] & ~wmask);
    end
end

// int_base_addr_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_base_addr_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BASE_ADDR_1_DATA_0)
            int_base_addr_1[31:0] <= (WDATA[31:0] & wmask) | (int_base_addr_1[31:0] & ~wmask);
    end
end

// int_base_addr_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_base_addr_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BASE_ADDR_2_DATA_0)
            int_base_addr_2[31:0] <= (WDATA[31:0] & wmask) | (int_base_addr_2[31:0] & ~wmask);
    end
end

// int_base_addr_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_base_addr_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BASE_ADDR_3_DATA_0)
            int_base_addr_3[31:0] <= (WDATA[31:0] & wmask) | (int_base_addr_3[31:0] & ~wmask);
    end
end

// int_width_img[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_width_img[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTH_IMG_DATA_0)
            int_width_img[31:0] <= (WDATA[31:0] & wmask) | (int_width_img[31:0] & ~wmask);
    end
end

// int_total_size[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_total_size[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TOTAL_SIZE_DATA_0)
            int_total_size[31:0] <= (WDATA[31:0] & wmask) | (int_total_size[31:0] & ~wmask);
    end
end

// int_processed_elem
always @(posedge ACLK) begin
    if (ARESET)
        int_processed_elem <= 0;
    else if (ACLK_EN) begin
        if (processed_elem_ap_vld)
            int_processed_elem <= processed_elem;
    end
end

// int_processed_elem_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_processed_elem_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (processed_elem_ap_vld)
            int_processed_elem_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_PROCESSED_ELEM_CTRL)
            int_processed_elem_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------

endmodule
