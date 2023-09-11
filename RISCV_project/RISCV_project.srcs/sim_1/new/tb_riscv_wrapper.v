`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 18:20:06
// Design Name: 
// Module Name: tb_riscv_wrapper
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

// RAM SIZE (KB)
`define MEMORY_SIZE_KB          (64)

// Other RAM definitions
`define MEMORY_SIZE_DW          (`MEMORY_SIZE_KB * 128)
`define MEMORY_SIZE_B           (`MEMORY_SIZE_KB * 1024)
`define MEMORY_ADDRESS_SIZE     ($clog2(`MEMORY_SIZE_B))

// ENC SUPPORT
`define ENC_SUPPORT             (1)

module tb_riscv_wrapper();
    reg tb_ACLK; // PS clock
    reg tb_ARESETn; // PS reset
    
    wire temp_clk;
    wire temp_rstn;
    
    // Upload binary C code in TCM Memory 
    integer f;
    reg [7:0] mem[(`MEMORY_SIZE_B-1):0];
    integer i;
    integer mem_empty;
    integer mem_dim = `MEMORY_SIZE_B;
    
    // Signals received from the AXI interface
    reg [31:0] read_data;
    reg resp;
    // SWITCHES
    reg [1:0] SW; // reg, will be defined in the initial block
    wire [3:0] LED; // reg, will be defined in the initial block
    // IP output
    wire and_output;
    
    /* 
    CLK freq: 1/period (GHz)
    period: 5   ->  200 MHz
    period: 10  ->  100 MHz
    period: 20  ->   50 MHz
    period: 50  ->   20 MHz
    //*/
    localparam period=5;
    
    always // Clock Generator
    begin
    tb_ACLK = 1'b0;#(period/2.0);
    tb_ACLK = 1'b1;#(period/2.0);
    end
    assign temp_clk=tb_ACLK;
    assign temp_rstn=tb_ARESETn;
    
    // The SoC that is tested clock, reset and the switches are connected
    RISCV_demonstrator_wrapper UUT
    (.A(SW),
     .LED(LED),
     .reset(temp_rstn),
     .sysclk(temp_clk)
    );
    
    //*
    initial
    begin
        $display("Starting testbench");
        
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
    
        f = $fopen("test_02.bin","rb");
        i = $fread(mem, f);
        $fclose(f);
        
        $display("i = %d",i);
        $display("before -> rdata:");
        mem_empty = 1;
        for (i=mem_dim-1; i >= 0; i=i-1)
            if(UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i] != 64'd0)
                mem_empty = 0;
                
        if(mem_empty)
            $display("OK! Memory Empty!");
            
        for (i=0;i<mem_dim;i=i+1)
            write(i, mem[i]);
            
        //write(512, 8'd27);
        //write(1024, 8'd82);
        
        
        
        $display("after -> rdata:");
        for (i=mem_dim-1; i >= 0; i=i-1)
            if(UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i] != 64'd0)
                $display("%d:%h",i,UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i]);
                
    end   
    
    //*/
    initial
    begin
        SW=2'b00; 
        tb_ARESETn = 1'b1;#(20*period);
        tb_ARESETn = 1'b0;#(300*period);
        
        SW=2'b00; 
        
        repeat (200) @(posedge temp_clk);
        SW=2'b01;
        repeat (140) @(posedge temp_clk);
        write(512, 8'd27);
        SW=2'b10;
        repeat (200) @(posedge temp_clk);
        SW=2'b11;
        repeat (200) @(posedge temp_clk);
        //write(512, 8'd27);
        SW=2'b11;
        //repeat (20000) @(posedge temp_clk);
        $finish;
        //$stop;
    end
//-------------------------------------------------------------
// write: Write byte into memory
//-------------------------------------------------------------
//*
task write; 
    input [31:0] addr;
    input [7:0]  data;
begin
    case (addr[2:0])
    3'd0: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][7:0]   = data;
    3'd1: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][15:8]  = data;
    3'd2: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][23:16] = data;
    3'd3: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][31:24] = data;
    3'd4: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][39:32] = data;
    3'd5: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][47:40] = data;
    3'd6: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][55:48] = data;
    3'd7: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr/8][63:56] = data;
    endcase
end
endtask

task write_otp; 
    input [31:0] addr;
    input [7:0]  data;
begin
    case (addr[2:0])
    3'd0: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][7:0]   = data;
    3'd1: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][15:8]  = data;
    3'd2: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][23:16] = data;
    3'd3: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][31:24] = data;
    3'd4: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][39:32] = data;
    3'd5: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][47:40] = data;
    3'd6: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][55:48] = data;
    3'd7: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr/8][63:56] = data;
    endcase
end
endtask

task write_enc; 
    input [31:0] addr;
    input [7:0]  data;
begin
    case (addr[2:0])
    3'd0: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][7:0]   = data;
    3'd1: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][15:8]  = data;
    3'd2: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][23:16] = data;
    3'd3: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][31:24] = data;
    3'd4: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][39:32] = data;
    3'd5: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][47:40] = data;
    3'd6: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][55:48] = data;
    3'd7: UUT.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr/8][63:56] = data;
    endcase
end
endtask
//*/

endmodule
