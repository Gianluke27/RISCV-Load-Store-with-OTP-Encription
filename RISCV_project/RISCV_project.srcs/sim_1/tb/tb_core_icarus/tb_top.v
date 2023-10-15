//////////////////////////////////////////////////////////////////////////////////
// Company: UNISA
// Engineer: Gianluca Canzolino (g.canzolino3@studenti.unisa.it)
// 
// Create Date: 06.08.2023 18:12:34
// Design Name: 
// Module Name: tb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//-----------------------------------------------------------------
// Includes
//-----------------------------------------------------------------
// RAM SIZE (KB)
`define MEMORY_SIZE_KB          (64)

// Other RAM definitions
`define MEMORY_SIZE_DW          (`MEMORY_SIZE_KB * 128)
`define MEMORY_SIZE_B           (`MEMORY_SIZE_KB * 1024)
`define MEMORY_ADDRESS_SIZE     ($clog2(`MEMORY_SIZE_B))

// ENC SUPPORT
`define ENC_SUPPORT             (0)

/* 
    CLK freq: 1/period (GHz)
    period: 5   ->  200 MHz
    period: 8   ->  125 MHz
    period: 10  ->  100 MHz
    period: 20  ->   50 MHz
    period: 50  ->   20 MHz
    //*/
`define CLK_PERIOD              (8)

/*
    Tests
*/
`define FILE_NAME               ("median_rvtests.mif")   

module tb_top();
    reg tb_ACLK;    // PS clock
    reg tb_ARESETn; // PS reset
    
    wire temp_clk;
    wire temp_rstn;
    
    // Upload binary C code in TCM Memory 
    integer f;
    reg [63:0]   mem [((`MEMORY_SIZE_DW)-1):0];
    integer i;
    integer mem_empty;
    integer mem_dim = `MEMORY_SIZE_DW;
    
    always // Clock Generator
    begin
    tb_ACLK = 1'b0;#(`CLK_PERIOD/2.0);
    tb_ACLK = 1'b1;#(`CLK_PERIOD/2.0);
    end
    assign temp_clk=tb_ACLK;
    assign temp_rstn=tb_ARESETn;
    
    reg [31:0] inst_prev = 32'b0;
    integer inst_count = 0;
    
    initial
    begin
        $display("Starting testbench");
        
        //-------------------------------------------------------------
        // Load TCM memory
        //------------------------------------------------------------- 
        for (i=0;i<mem_dim;i=i+1)
            mem[i] = 0;
        
        $readmemh(`FILE_NAME, mem);
        $display("Test!");
        
        mem_empty = 1;
        for (i=mem_dim-1; i >= 0; i=i-1)
            if(riscv.u_tcm.u_ram.ram[i] != 64'd0)
                mem_empty = 0;
                
        if(mem_empty)
            $display("OK! Memory Empty!");
        
        for (i=0;i<mem_dim;i=i+1)
        begin
            //*
            write_otp(i, 0);
            write_enc(i, mem[i]);
            //*/
            write(i, mem[i]);
        end
        
        $display("after -> rdata:");
        for (i=mem_dim-1; i >= 0; i=i-1)
            if(riscv.u_tcm.u_ram.ram[i] != 64'd0)
                $display("%d:%h",i,riscv.u_tcm.u_ram.ram[i]);  
                     
        //-------------------------------------------------------------
        // Begin testbench
        //------------------------------------------------------------- 
        tb_ARESETn = 1'b1;#(5*`CLK_PERIOD);
        tb_ARESETn = 1'b0;#(5*`CLK_PERIOD);
        
        while(inst_count != 50)
        begin
            if(riscv.u_core.u_frontend.u_fetch.fetch_pc_o != inst_prev)
                inst_count = 0;
            else begin
                inst_count = inst_count + 1;
            end
            inst_prev = riscv.u_core.u_frontend.u_fetch.fetch_pc_o;
            repeat (1) @(posedge temp_clk);   
        end
        
        $finish;
    end

//-------------------------------------------------------------
// write: Write byte into memory
//-------------------------------------------------------------
task write; 
    input [31:0] addr;
    input [63:0]  data;
begin   
    riscv.u_tcm.u_ram.ram[addr][63:0]  = data;    
end
endtask

//*
task write_otp; 
    input [31:0] addr;
    input [63:0]  data;
begin
    riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr][63:0] = data;
end
endtask

task write_enc; 
    input [31:0] addr;
    input [63:0]  data;
begin
    riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr][63:0] = data;
end
endtask
//*/

//-------------------------------------------------------------
// riscv_tcm_top module
//-------------------------------------------------------------
riscv_tcm_top 
#(
    .BOOT_VECTOR(32'h80000000)
    ,.CORE_ID(0)
    ,.TCM_MEM_BASE(32'h80000000)
    ,.SUPPORT_BRANCH_PREDICTION(1)
    ,.SUPPORT_MULDIV(1)
    ,.SUPPORT_SUPER(0)
    ,.SUPPORT_MMU(0)
    ,.SUPPORT_DUAL_ISSUE(1)
    ,.SUPPORT_LOAD_BYPASS(1)
    ,.SUPPORT_MUL_BYPASS(1)
    ,.SUPPORT_REGFILE_XILINX(0)
    ,.EXTRA_DECODE_STAGE(0)
    ,.MEM_DIM_KB(`MEMORY_SIZE_KB)
    ,.MEM_CACHE_ADDR_MIN(32'h80000000)
    ,.MEM_CACHE_ADDR_MAX(32'h8fffffff)
    ,.NUM_BTB_ENTRIES(32)
    ,.NUM_BTB_ENTRIES_W(5)
    ,.NUM_BHT_ENTRIES(512)
    ,.NUM_BHT_ENTRIES_W(9)
    ,.RAS_ENABLE(1)
    ,.GSHARE_ENABLE(0)
    ,.BHT_ENABLE(1)
    ,.NUM_RAS_ENTRIES(8)
    ,.NUM_RAS_ENTRIES_W(3)
    ,.SUPPORT_ENCRYPTION(`ENC_SUPPORT)
    ,.SUPPORT_ENC_UPDATER(0)
)
riscv
(
    // Inputs
     .clk_i(temp_clk)
    ,.rst_i(temp_rstn)
    ,.rst_cpu_i(temp_rstn)
);

endmodule