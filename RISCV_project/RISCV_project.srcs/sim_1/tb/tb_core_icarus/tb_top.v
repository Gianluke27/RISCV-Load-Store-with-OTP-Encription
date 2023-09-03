//-----------------------------------------------------------------
// Includes
//-----------------------------------------------------------------
// RAM SIZE (KB)
`define MEMORY_SIZE_KB          (64)

// Other RAM definitions
`define MEMORY_SIZE_DW          (`MEMORY_SIZE_KB * 128)
`define MEMORY_SIZE_B           (`MEMORY_SIZE_KB * 1024)
`define MEMORY_ADDRESS_SIZE     ($clog2(`MEMORY_SIZE_B))

// ENC SUPPORT (KB)
`define ENC_SUPPORT             (1)

module tb_top;

reg clk;
reg rst;

reg [7:0] mem[(`MEMORY_SIZE_B-1):0];
integer i;
integer f;
integer mem_empty;
integer mem_dim = `MEMORY_SIZE_B;

initial
begin
    $display("Starting bench");


    // Reset
    clk = 0;
    rst = 1;
    repeat (5) @(posedge clk);
    rst = 0;

    // Load TCM memory
    for (i=0;i<mem_dim;i=i+1)
        mem[i] = 0;
        
    if(`ENC_SUPPORT)
    begin
        for (i=0;i<mem_dim;i=i+1)
        begin
            write_enc(i, 0);
            write_otp(i, 0);
        end
    end

    f = $fopen("test_01.bin","rb");
    i = $fread(mem, f);
    $fclose(f);
    $display("i = %d",i);
    $display("before -> rdata:");
    mem_empty = 1;
    for (i=mem_dim-1; i >= 0; i=i-1)
        if(riscv.u_tcm.u_ram.ram[i] != 64'd0)
            mem_empty = 0;
            
    if(mem_empty)
        $display("OK! Memory Empty!");
        
    for (i=0;i<mem_dim;i=i+1)
        write(i, mem[i]);
        
    //write(512, 8'd27);
    //write(1024, 8'd82);
    
    
    
    $display("after -> rdata:");
    for (i=mem_dim-1; i >= 0; i=i-1)
        if(riscv.u_tcm.u_ram.ram[i] != 64'd0)
            $display("%d:%h",i,riscv.u_tcm.u_ram.ram[i]);
        
    repeat (42) @(posedge clk);
    write(512, 8'd27);
    repeat (10) @(posedge clk);
            
    // Stop condition - to implement
    /*
    i = 0;
    while(u_dut.u_frontend.u_fetch.fetch_pc_o != 32'h80000000)
    begin
        repeat (1) @(posedge clk);
        //$display("%d",i);
        //i=i+1;
    end
    repeat (5) @(posedge clk);
    */
    
    // Finish 
    $finish;
end

initial
begin
    forever
    begin 
        clk = #5 ~clk;
    end
end

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
    ,.SUPPORT_ENCRYPTION(1)
    ,.SUPPORT_ENC_UPDATER(0)
)
riscv
(
    // Inputs
     .clk_i(clk)
    ,.rst_i(rst)
    ,.rst_cpu_i(rst)
);


//-------------------------------------------------------------
// write: Write byte into memory
//-------------------------------------------------------------
task write; /*verilator public*/
    input [31:0] addr;
    input [7:0]  data;
begin
    case (addr[2:0])
    3'd0: riscv.u_tcm.u_ram.ram[addr/8][7:0]   = data;
    3'd1: riscv.u_tcm.u_ram.ram[addr/8][15:8]  = data;
    3'd2: riscv.u_tcm.u_ram.ram[addr/8][23:16] = data;
    3'd3: riscv.u_tcm.u_ram.ram[addr/8][31:24] = data;
    3'd4: riscv.u_tcm.u_ram.ram[addr/8][39:32] = data;
    3'd5: riscv.u_tcm.u_ram.ram[addr/8][47:40] = data;
    3'd6: riscv.u_tcm.u_ram.ram[addr/8][55:48] = data;
    3'd7: riscv.u_tcm.u_ram.ram[addr/8][63:56] = data;
    endcase
end
endtask

task write_otp; 
    input [31:0] addr;
    input [7:0]  data;
begin
    case (addr[2:0])
    3'd0: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][7:0]   = data;
    3'd1: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][15:8]  = data;
    3'd2: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][23:16] = data;
    3'd3: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][31:24] = data;
    3'd4: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][39:32] = data;
    3'd5: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][47:40] = data;
    3'd6: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][55:48] = data;
    3'd7: riscv.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][63:56] = data;
    endcase
end
endtask

task write_enc; 
    input [31:0] addr;
    input [7:0]  data;
begin
    case (addr[2:0])
    3'd0: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][7:0]   = data;
    3'd1: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][15:8]  = data;
    3'd2: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][23:16] = data;
    3'd3: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][31:24] = data;
    3'd4: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][39:32] = data;
    3'd5: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][47:40] = data;
    3'd6: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][55:48] = data;
    3'd7: riscv.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][63:56] = data;
    endcase
end
endtask

endmodule