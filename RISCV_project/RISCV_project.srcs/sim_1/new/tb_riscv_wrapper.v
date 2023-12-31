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
    Tests
*/
`define FILE_NAME               ("RISCV_Encryptor_test_01.mif")   

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
    
    reg [31:0] inst_prev = 32'b0;
    integer inst_count = 0;
    integer addr = 0;
    
    initial
    begin
        $display("Starting testbench");
        
        //-------------------------------------------------------------
        // Load TCM memory
        //------------------------------------------------------------- 
        for (i=0;i<mem_dim;i=i+1)
            mem[i] = 0;
        
        if(`TB_TYPE == "Test")
        begin
            $readmemh(`FILE_NAME, mem);
            $display("Test!");
            
            mem_empty = 1;
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[i] != 64'd0)
                    mem_empty = 0;
                    
            if(mem_empty)
                $display("OK! Memory Empty!");
                
            for (i=0;i<mem_dim;i=i+1)
            begin
                write(i, mem[i]);
                //*
                write_enc(i, mem[i]);
                write_otp(i, 0);
                //*/
            end
            
            $display("after -> rdata:");
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[i] != 64'd0)
                    $display("%d:%h",i,UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[i]);       
        end
        else if(`TB_TYPE == "Test_Demonstator")
        begin
            $readmemh(`FILE_NAME, mem);
            $display("Test_Demonstator!");
            
            mem_empty = 1;
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[i] != 64'd0)
                    mem_empty = 0;
                    
            if(mem_empty)
                $display("OK! Memory Empty!");
                
            for (i=0;i<mem_dim;i=i+1)
            begin
                write(i, mem[i]);
                //*
                write_enc_demonstrator(i, mem[i]);
                write_otp_demonstrator(i, 0);
                //*/
            end
            
            $display("after -> rdata:");
            for (i=mem_dim-1; i >= 0; i=i-1)
                if(UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[i] != 64'd0)
                    $display("%d:%h",i,UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[i]);      
        end           
    end  
    
    initial
    begin
        tb_ARESETn = 1'b1;#(5*`CLK_PERIOD);
        tb_ARESETn = 1'b0;#(5*`CLK_PERIOD);
        if(`TB_TYPE == "Test")
        begin
            while(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.rst_i == 1)
            begin
                repeat (1) @(posedge temp_clk); 
            end
            
            while(inst_count != 50)
            begin
                if(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_core.u_frontend.u_fetch.fetch_pc_o != inst_prev)
                    inst_count = 0;
                else begin
                    inst_count = inst_count + 1;
                end
                inst_prev = UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_core.u_frontend.u_fetch.fetch_pc_o;
                
                if(UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.secure_zone.u_encryptor.plain_data_i == 32'h7788)
                begin
                    addr = UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.secure_zone.u_encryptor.mem_addr_i;
                    repeat (6) @(posedge temp_clk);  
                    write(addr , 64'haaaa7788);
                end
                
                repeat (1) @(posedge temp_clk);   
            end
        end
        else if(`TB_TYPE == "Test_Demonstator")
        begin
            SW=2'b00; 
            
            while(UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.rst_i == 1)
            begin
                repeat (1) @(posedge temp_clk); 
            end
            
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
            
            while(inst_count != 50)
            begin
                if(UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_core.u_frontend.u_fetch.fetch_pc_o != inst_prev)
                    inst_count = 0;
                else begin
                    inst_count = inst_count + 1;
                end
                inst_prev = UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_core.u_frontend.u_fetch.fetch_pc_o;
                
                
                
                repeat (1) @(posedge temp_clk);   
            end
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
    UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[addr][63:0]  = data;    
end
endtask

task write_otp; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.secure_zone.no_enc_updater.u_otp_ram.ram[addr][63:0] = data;
end
endtask

task write_enc; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT.RISCV_bd_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.secure_zone.no_enc_updater.u_enc_ram.ram[addr][63:0] = data;
end
endtask

// Tasks for demonstrator
task write_demonstrator; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.u_ram.ram[addr][63:0] = data;
end
endtask

task write_otp_demonstrator; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.secure_zone.no_enc_updater.u_otp_ram.ram[addr][63:0] = data;
end
endtask

task write_enc_demonstrator; 
    input [31:0] addr;
    input [63:0]  data;
begin
    UUT_demonstrator.RISCV_demonstrator_i.riscv_wrapper_0.inst.rv_tcm_top.u_secure_zone.u_secure_memories.secure_zone.no_enc_updater.u_enc_ram.ram[addr][63:0] = data;
end
endtask
//*/

endmodule
