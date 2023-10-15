//-----------------------------------------------------------------
//                         biRISC-V CPU
//                            V0.6.0
//                     Ultra-Embedded.com
//                     Copyright 2019-2020
//
//                   admin@ultra-embedded.com
//
//                     License: Apache 2.0
//-----------------------------------------------------------------
// Copyright 2020 Ultra-Embedded.com
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//-----------------------------------------------------------------

module tcm_mem
//-----------------------------------------------------------------
// Params
//-----------------------------------------------------------------
#(
     parameter MEM_DIM_KB = 64
    ,parameter SUPPORT_ENCRYPTION = 1
    ,parameter SUPPORT_ENC_UPDATER = 0
)
//-----------------------------------------------------------------
// Ports
//-----------------------------------------------------------------
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input           mem_i_rd_i
    ,input           mem_i_flush_i
    ,input           mem_i_invalidate_i
    ,input  [ 31:0]  mem_i_pc_i
    ,input  [ 31:0]  mem_d_addr_i
    ,input  [ 31:0]  mem_d_data_wr_i
    ,input           mem_d_rd_i
    ,input  [  3:0]  mem_d_wr_i
    ,input           mem_d_cacheable_i
    ,input  [ 10:0]  mem_d_req_tag_i
    ,input           mem_d_invalidate_i
    ,input           mem_d_writeback_i
    ,input           mem_d_flush_i
    ,input  [ 31:0]  random_num_i
    ,input           axi_awvalid_i
    ,input  [ 31:0]  axi_awaddr_i
    ,input  [  3:0]  axi_awid_i
    ,input  [  7:0]  axi_awlen_i
    ,input  [  1:0]  axi_awburst_i
    ,input           axi_wvalid_i
    ,input  [ 31:0]  axi_wdata_i
    ,input  [  3:0]  axi_wstrb_i
    ,input           axi_wlast_i
    ,input           axi_bready_i
    ,input           axi_arvalid_i
    ,input  [ 31:0]  axi_araddr_i
    ,input  [  3:0]  axi_arid_i
    ,input  [  7:0]  axi_arlen_i
    ,input  [  1:0]  axi_arburst_i
    ,input           axi_rready_i

    // Outputs
    ,output          mem_i_accept_o
    ,output          mem_i_valid_o
    ,output          mem_i_error_o
    ,output [ 63:0]  mem_i_inst_o
    ,output [ 31:0]  mem_d_data_rd_o
    ,output          mem_d_accept_o
    ,output          mem_d_ack_o
    ,output          mem_d_error_o
    ,output          mem_d_enc_error_o
    ,output [ 10:0]  mem_d_resp_tag_o
    ,output          axi_awready_o
    ,output          axi_wready_o
    ,output          axi_bvalid_o
    ,output [  1:0]  axi_bresp_o
    ,output [  3:0]  axi_bid_o
    ,output          axi_arready_o
    ,output          axi_rvalid_o
    ,output [ 31:0]  axi_rdata_o
    ,output [  1:0]  axi_rresp_o
    ,output [  3:0]  axi_rid_o
    ,output          axi_rlast_o
);

//-------------------------------------------------------------
// AXI -> PMEM Interface
//-------------------------------------------------------------
wire          ext_accept_w;
wire          ext_ack_w;
wire [ 31:0]  ext_read_data_w;
wire [  3:0]  ext_wr_w;
wire          ext_rd_w;
wire [  7:0]  ext_len_w;
wire [ 31:0]  ext_addr_w;
wire [ 31:0]  ext_write_data_w;

tcm_mem_pmem
u_conv
(
    // Inputs
    .clk_i(clk_i),
    .rst_i(rst_i),
    .axi_awvalid_i(axi_awvalid_i),
    .axi_awaddr_i(axi_awaddr_i),
    .axi_awid_i(axi_awid_i),
    .axi_awlen_i(axi_awlen_i),
    .axi_awburst_i(axi_awburst_i),
    .axi_wvalid_i(axi_wvalid_i),
    .axi_wdata_i(axi_wdata_i),
    .axi_wstrb_i(axi_wstrb_i),
    .axi_wlast_i(axi_wlast_i),
    .axi_bready_i(axi_bready_i),
    .axi_arvalid_i(axi_arvalid_i),
    .axi_araddr_i(axi_araddr_i),
    .axi_arid_i(axi_arid_i),
    .axi_arlen_i(axi_arlen_i),
    .axi_arburst_i(axi_arburst_i),
    .axi_rready_i(axi_rready_i),
    .ram_accept_i(ext_accept_w),
    .ram_ack_i(ext_ack_w),
    .ram_error_i(1'b0),
    .ram_read_data_i(ext_read_data_w),

    // Outputs
    .axi_awready_o(axi_awready_o),
    .axi_wready_o(axi_wready_o),
    .axi_bvalid_o(axi_bvalid_o),
    .axi_bresp_o(axi_bresp_o),
    .axi_bid_o(axi_bid_o),
    .axi_arready_o(axi_arready_o),
    .axi_rvalid_o(axi_rvalid_o),
    .axi_rdata_o(axi_rdata_o),
    .axi_rresp_o(axi_rresp_o),
    .axi_rid_o(axi_rid_o),
    .axi_rlast_o(axi_rlast_o),
    .ram_wr_o(ext_wr_w),
    .ram_rd_o(ext_rd_w),
    .ram_len_o(ext_len_w),
    .ram_addr_o(ext_addr_w),
    .ram_write_data_o(ext_write_data_w)
);

//-------------------------------------------------------------
// Dual Port RAM
//-------------------------------------------------------------

// Mux access to the 2nd port between external access and CPU data access

wire [($clog2(MEM_DIM_KB * 1024)-4):0] mem_addr_w = mem_d_addr_i[($clog2(MEM_DIM_KB * 1024)-1):3];
wire mem_hi_w = mem_d_addr_i[2];

wire muxed_hi_w = ext_accept_w ? ext_addr_w[2] : mem_hi_w;
wire [($clog2(MEM_DIM_KB * 1024)-4):0] muxed_addr_w = ext_accept_w ? ext_addr_w[($clog2(MEM_DIM_KB * 1024)-1):3] : mem_addr_w;
wire [31:0] muxed_data_w = ext_accept_w ? ext_write_data_w : mem_d_data_wr_i;
wire [3:0]  muxed_wr_w   = ext_accept_w ? ext_wr_w         : mem_d_wr_i;
wire [63:0] data_r_w;

// For enc updater  -> to do
wire [($clog2(MEM_DIM_KB * 1024)-4):0] enc_updater_addr_w = 0;


tcm_mem_ram
#(
      .MEM_DIM_KB(MEM_DIM_KB)
     ,.TYPE("PLAIN")
)
u_ram
(
    // Instruction fetch
     .clk0_i(clk_i)
    ,.rst0_i(rst_i)
    ,.addr0_i(mem_i_pc_i[($clog2(MEM_DIM_KB * 1024)-1):3])
    ,.data0_i(64'b0)
    ,.wr0_i(8'b0)

    // External access / Data access
    ,.clk1_i(clk_i)
    ,.rst1_i(rst_i)
    ,.addr1_i(muxed_addr_w)
    ,.data1_i(muxed_hi_w ? {muxed_data_w, 32'b0} : {32'b0, muxed_data_w})
    ,.wr1_i(muxed_hi_w ? {muxed_wr_w, 4'b0} : {4'b0, muxed_wr_w})

    // Outputs
    ,.data0_o(mem_i_inst_o)
    ,.data1_o(data_r_w)
);

// Encryption 
wire  [63:0]  enc_data_w;
wire  [63:0]  otp_data_w; 
wire  [31:0]  enc_word_w;
wire  [31:0]  otp_word_w;
wire  [31:0]  plain_word_w; 
wire          result_xor_w;


//wire  [31:0]  result_xor_w_h;
//wire  [31:0]  result_xor_w_l;

generate
if (SUPPORT_ENCRYPTION)
begin : secure_zone
    

    if (SUPPORT_ENC_UPDATER)
    begin : enc_updater
        //-------------------------------------------------------------
        // Dual Port RAM - Encrypted - with enc updater
        //-------------------------------------------------------------
        tcm_mem_ram
        #(
              .MEM_DIM_KB(MEM_DIM_KB)
             ,.TYPE("ENC")
        )
        u_enc_ram
        (
            // Data access - Load/Store Operation
            .clk0_i(clk_i)
            ,.rst0_i(rst_i)
            ,.addr0_i(mem_addr_w)
            ,.data0_i(mem_hi_w? {random_num_i ^ mem_d_data_wr_i, 32'b0} : {32'b0, random_num_i ^ mem_d_data_wr_i})
            ,.wr0_i(mem_hi_w? {mem_d_wr_i, 4'b0} : {4'b0, mem_d_wr_i})
                    
            // Data access - EncUpdate Module
            // to do
            ,.clk1_i(clk_i)
            ,.rst1_i(rst_i)
            ,.addr1_i(enc_updater_addr_w)
            ,.data1_i(64'b0)
            ,.wr1_i(8'b0)
            
            // Outputs
            ,.data0_o(enc_data_w)
            ,.data1_o()
        );
        
        //-------------------------------------------------------------
        // Dual Port RAM - OTP - with enc updater
        //-------------------------------------------------------------
        tcm_mem_ram
        #(
              .MEM_DIM_KB(MEM_DIM_KB)
             ,.TYPE("OTP")
        )
        u_otp_ram
        (
            // Data access - Load/Store Operation
            .clk0_i(clk_i)
            ,.rst0_i(rst_i)
            ,.addr0_i(mem_addr_w)
            ,.data0_i(mem_hi_w? {random_num_i, 32'b0} : {32'b0, random_num_i})
            ,.wr0_i(mem_hi_w? {mem_d_wr_i, 4'b0} : {4'b0, mem_d_wr_i})
            
             // Data access - EncUpdate Module
            ,.clk1_i(clk_i)
            ,.rst1_i(rst_i)
            ,.addr1_i(enc_updater_addr_w)
            ,.data1_i(64'b0)
            ,.wr1_i(8'b0)
        
            // Outputs
            ,.data0_o(otp_data_w)
            ,.data1_o()
        );
    end
    else
    begin : no_enc_updater
        //-------------------------------------------------------------
        // Dual Port RAM - Encrypted - without enc updater
        //-------------------------------------------------------------
        tcm_mem_ram
        #(
              .MEM_DIM_KB(MEM_DIM_KB)
             ,.TYPE("ENC")
        )
        u_enc_ram
        (
            // Data access - Load/Store Operation
            .clk0_i(clk_i)
            ,.rst0_i(rst_i)
            ,.addr0_i(mem_addr_w)
            ,.data0_i(mem_hi_w? {random_num_i ^ mem_d_data_wr_i, 32'b0} : {32'b0, random_num_i ^ mem_d_data_wr_i})
            ,.wr0_i(mem_hi_w? {mem_d_wr_i, 4'b0} : {4'b0, mem_d_wr_i})
    
            // Outputs
            ,.data0_o(enc_data_w)
        );
        
        //-------------------------------------------------------------
        // Dual Port RAM - OTP - without enc updater
        //-------------------------------------------------------------
        tcm_mem_ram
        #(
              .MEM_DIM_KB(MEM_DIM_KB)
             ,.TYPE("OTP")
        )
        u_otp_ram
        (
            // Data access
            .clk0_i(clk_i)
            ,.rst0_i(rst_i)
            ,.addr0_i(mem_addr_w)
            ,.data0_i(mem_hi_w? {random_num_i, 32'b0} : {32'b0, random_num_i})
            ,.wr0_i(mem_hi_w? {mem_d_wr_i, 4'b0} : {4'b0, mem_d_wr_i})
        
            // Outputs
            ,.data0_o(otp_data_w)
        );
    end
    
    //* // ORIGINAL
    assign enc_word_w = muxed_hi_q ? enc_data_w[63:32] : enc_data_w[31:0]; 
    assign otp_word_w = muxed_hi_q ? otp_data_w[63:32] : otp_data_w[31:0]; 
    assign plain_word_w = muxed_hi_q ? data_r_w[63:32] : data_r_w[31:0]; 
    assign result_xor_w = mem_d_rd_q ? (((enc_word_w ^ otp_word_w) == plain_word_w) ? 1'b1: 1'b0): 1'b1;
    //*/
    /* // TEST FOR DELAY    
    assign result_xor_w_h = (enc_data_w[63:32] ^ otp_data_w[63:32] == data_r_w[63:32])? 1'b1: 1'b0;
    assign result_xor_w_l = (enc_data_w[31:0] ^ otp_data_w[31:0] == data_r_w[31:0])? 1'b1: 1'b0;
    
    assign result_xor_w = muxed_hi_q ? result_xor_w_h: result_xor_w_l;
    //*/
end
else
begin
    assign result_xor_w = 1'b1;
end
endgenerate

//-------------------------------------------------------------
// Sequential for Encryption
//-------------------------------------------------------------
// Save last read request
reg mem_d_rd_q; 

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    mem_d_rd_q <= 1'b0;
else
    mem_d_rd_q <= mem_d_rd_i;

reg muxed_hi_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    muxed_hi_q <= 1'b0;
else
    muxed_hi_q <= muxed_hi_w;

assign ext_read_data_w = muxed_hi_q ? data_r_w[63:32] : data_r_w[31:0];

//-------------------------------------------------------------
// Instruction Fetch
//-------------------------------------------------------------
reg        mem_i_valid_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    mem_i_valid_q <= 1'b0;
else
    mem_i_valid_q <= mem_i_rd_i;

assign mem_i_accept_o  = 1'b1;
assign mem_i_valid_o   = mem_i_valid_q;
assign mem_i_error_o   = 1'b0;

//-------------------------------------------------------------
// Data Access / Incoming external access
//-------------------------------------------------------------
reg        mem_d_accept_q;
reg [10:0] mem_d_tag_q;
reg        mem_d_ack_q;
reg        ext_ack_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    mem_d_accept_q <= 1'b1;
// External request, do not accept internal requests in next cycle
else if (ext_rd_w || ext_wr_w != 4'b0)
    mem_d_accept_q <= 1'b0;
else
    mem_d_accept_q <= 1'b1;
    
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    mem_d_ack_q    <= 1'b0;
    mem_d_tag_q    <= 11'b0;
end
else if ((mem_d_rd_i || mem_d_wr_i != 4'b0 || mem_d_flush_i || mem_d_invalidate_i || mem_d_writeback_i) && mem_d_accept_o)
begin
    mem_d_ack_q    <= 1'b1;
    mem_d_tag_q    <= mem_d_req_tag_i;
end
else
begin
    mem_d_ack_q    <= 1'b0;
end

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    ext_ack_q <= 1'b0;
// External request accepted
else if ((ext_rd_w || ext_wr_w != 4'b0) && ext_accept_w)
    ext_ack_q <= 1'b1;
else
    ext_ack_q <= 1'b0;

assign mem_d_ack_o          = mem_d_ack_q;
assign mem_d_resp_tag_o     = mem_d_tag_q;
assign mem_d_data_rd_o      = muxed_hi_q ? data_r_w[63:32] : data_r_w[31:0];
assign mem_d_enc_error_o    = !result_xor_w; //& mem_d_rd_q;
assign mem_d_error_o        = mem_d_enc_error_o;

assign mem_d_accept_o       = mem_d_accept_q;
assign ext_accept_w         = !mem_d_accept_q;
assign ext_ack_w            = ext_ack_q;

endmodule