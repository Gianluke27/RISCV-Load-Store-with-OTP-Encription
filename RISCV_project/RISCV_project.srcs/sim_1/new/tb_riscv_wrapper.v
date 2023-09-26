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

/* 
    CLK freq: 1/period (GHz)
    period: 5   ->  200 MHz
    period: 8   ->  125 MHz
    period: 10  ->  100 MHz
    period: 20  ->   50 MHz
    period: 50  ->   20 MHz
    //*/
`define CLK_PERIOD              (8)

// TB Type
`define TB_TYPE                 ("Test")                    //"Test" or "Test_Demonstator"

/*
Tests:
RISCV_test_01.mif
test_01.mif
*/
`define FILE_NAME               ("RISCV_power_01.mif")   

module tb_riscv_wrapper();
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
    
    // SWITCHES AND LEDS
    reg [1:0] SW; // reg, will be defined in the initial block
    wire [3:0] LED; // reg, will be defined in the initial block
    
    always // Clock Generator
    begin
    tb_ACLK = 1'b0;#(`CLK_PERIOD/2.0);
    tb_ACLK = 1'b1;#(`CLK_PERIOD/2.0);
    end
    assign temp_clk=tb_ACLK;
    assign temp_rstn=tb_ARESETn;
    
    // RISCV with outputs for a demonstation
    RISCV_demonstrator_wrapper UUT_demonstrator
    (.A(SW),
     .LED(LED),
     .reset(temp_rstn),
     .sysclk(temp_clk)
    );
    
    // RISCV without outputs for behavioral and power tests
    RISCV_bd_wrapper UUT
    (.reset(temp_rstn),
     .sysclk(temp_clk)
    );
    
    initial
    begin
        $display("Starting testbench");
        
        // Load TCM memory
        for (i=0;i<mem_dim;i=i+1)
            mem[i] = 0;
            
        for (i=0;i<mem_dim;i=i+1)
        begin
            write_enc(i, 0);
            write_otp(i, 0);
            write_enc_demonstrator(i, 0);
            write_otp_demonstrator(i, 0);
        end
    
        
        if(`TB_TYPE == "Test")
        begin
            $readmemh(`FILE_NAME, mem);
            $display("Test!");
            
            mem_empty = 1;
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i] != 64'd0)
                    mem_empty = 0;
                    
            if(mem_empty)
                $display("OK! Memory Empty!");
                
            for (i=0;i<mem_dim;i=i+1)
            begin
                write(i, mem[i]);
                write_demonstrator(i, 0);
            end
            
            $display("after -> rdata:");
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i] != 64'd0)
                    $display("%d:%h",i,UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i]);       
        end
        else if(`TB_TYPE == "Test_Demonstator")
        begin
            $readmemh(`FILE_NAME, mem);
            $display("Test_Demonstator!");
            
            mem_empty = 1;
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i] != 64'd0)
                    mem_empty = 0;
                    
            if(mem_empty)
                $display("OK! Memory Empty!");
                
            for (i=0;i<mem_dim;i=i+1)
            begin
                write(i, 0);
                write_demonstrator(i, mem[i]);
            end
            
            $display("after -> rdata:");
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i] != 64'd0)
                    $display("%d:%h",i,UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[i]);      
        end           
    end  
    
    initial
    begin
        if(`TB_TYPE == "Test")
        begin
            tb_ARESETn = 1'b1;#(20*`CLK_PERIOD);
            tb_ARESETn = 1'b0;#(100*`CLK_PERIOD);
            repeat (100) @(posedge temp_clk);
        end
        else if(`TB_TYPE == "Test_Demonstator")
        begin
            SW=2'b00; 
            tb_ARESETn = 1'b1;#(20*`CLK_PERIOD);
            tb_ARESETn = 1'b0;#(300*`CLK_PERIOD);
            
            SW=2'b00; 
            
            repeat (1000) @(posedge temp_clk);
            SW=2'b01;
            repeat (1000) @(posedge temp_clk);
            //write(512, 8'd27);
            SW=2'b10;
            repeat (1000) @(posedge temp_clk);
            SW=2'b11;
            repeat (19000) @(posedge temp_clk);
            write_demonstrator(1471, 64'h0123456789abcdef);
            SW=2'b00;
            repeat (200) @(posedge temp_clk);
        end
        $finish;
        //$stop;
    end
//-------------------------------------------------------------
// write: Write byte into memory
//-------------------------------------------------------------
//*
task write; 
    input [31:0] addr;
    input [63:0]  data;
begin   
    UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr][63:0]  = data;    
end
endtask

task write_otp; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr][63:0] = data;
end
endtask

task write_enc; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr][63:0] = data;
end
endtask

// Tasks for demonstrator
task write_demonstrator; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.u_ram.ram[addr][63:0] = data;
end
endtask

task write_otp_demonstrator; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_otp_ram.ram[addr][63:0] = data;
end
endtask

task write_enc_demonstrator; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_tcm.secure_zone.no_enc_updater.u_enc_ram.ram[addr][63:0] = data;
end
endtask
//*/

endmodule
