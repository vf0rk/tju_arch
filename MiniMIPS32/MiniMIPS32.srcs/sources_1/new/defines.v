`timescale 1ns / 1ps

/*------------------- Global Signal -------------------*/
`define RST_ENABLE      1'b0                // Enable Reset signal  RST_ENABLE
`define RST_DISABLE     1'b1                // Disable reset signal
`define ZERO_WORD       32'h00000000        // 32-bit zero
`define ZERO_DWORD      64'b0               // 64-bit zero
`define WRITE_ENABLE    1'b1                
`define WRITE_DISABLE   1'b0                
`define READ_ENABLE     1'b1                
`define READ_DISABLE    1'b0                
`define ALUOP_BUS       7 : 0               // width of aluop_o signal in ID stage 
`define WE_HILO         1: 0                // write enable signal of hilo register
`define SHIFT_ENABLE    1'b1                
`define ALUTYPE_BUS     2 : 0               // width of aluotype_o signal in ID stage 
`define TRUE_V          1'b1                // logical true  
`define FALSE_V         1'b0                // logical false
`define CHIP_ENABLE     1'b1                
`define CHIP_DISABLE    1'b0                
`define WORD_BUS        31: 0               // 32bit width
`define DOUBLE_REG_BUS  63: 0               // double width of register data signal
`define RT_ENABLE       1'b1                // RTSEL enable
`define SIGNED_EXT      1'b1                // sign extension enable
`define IMM_ENABLE      1'b1                // IMMSEL enable
`define UPPER_ENABLE    1'b1                // IMMSHIFT enable
`define MREG_ENABLE     1'b1                // Memory to register enable
`define BSEL_BUS        3 : 0               // Memory byte select signal
`define PC_INIT         32'hBFC00000        // Start of text segment
`define JUMP_BUS        25: 0
`define JTSEL_BUS       1 : 0


/*------------------- ָInstruction signal -------------------*/
`define INST_ADDR_BUS   31: 0               // ָWidth of INSTR MEM ADDR
`define INST_BUS        31: 0               // ָWidth of Insturction Word

// alutype
`define NOP             3'b000
`define ARITH           3'b001
`define LOGIC           3'b010
`define MOVE            3'b011
`define SHIFT           3'b100
`define JUMP            3'b101

// aluop
`define MINIMIPS32_LUI             8'h05
`define MINIMIPS32_SRLV            8'h09
`define MINIMIPS32_SRL             8'h0A
`define MINIMIPS32_SLLV            8'h0B
`define MINIMIPS32_MFHI            8'h0C
`define MINIMIPS32_MFLO            8'h0D
`define MINIMIPS32_MTHI            8'h0E
`define MINIMIPS32_MTLO            8'h0F
`define MINIMIPS32_SLL             8'h11
`define MINIMIPS32_SRAV            8'h12
`define MINIMIPS32_SRA             8'h13
`define MINIMIPS32_MULT            8'h14
`define MINIMIPS32_MULTU           8'h15
`define MINIMIPS32_ADDU            8'h17   
`define MINIMIPS32_ADD             8'h18
`define MINIMIPS32_ADDIU           8'h19
`define MINIMIPS32_ADDI            8'h1A   
`define MINIMIPS32_SUBU            8'h1B
`define MINIMIPS32_AND             8'h1C
`define MINIMIPS32_ORI             8'h1D
`define MINIMIPS32_SUB             8'h1E
`define MINIMIPS32_ANDI            8'h1F
`define MINIMIPS32_NOR             8'h20
`define MINIMIPS32_OR              8'h21
`define MINIMIPS32_XOR             8'h22
`define MINIMIPS32_XORI            8'h23
`define MINIMIPS32_SLTU            8'h24
`define MINIMIPS32_SLTI            8'h25
`define MINIMIPS32_SLT             8'h26
`define MINIMIPS32_SLTIU           8'h27
`define MINIMIPS32_LB              8'h90
`define MINIMIPS32_LBU             8'h91
`define MINIMIPS32_LW              8'h92
`define MINIMIPS32_LH              8'h93
`define MINIMIPS32_LHU             8'h94
`define MINIMIPS32_SB              8'h98
`define MINIMIPS32_SH              8'h99
`define MINIMIPS32_SW              8'h9A
`define MINIMIPS32_J               8'h2C
`define MINIMIPS32_JR              8'h2D
`define MINIMIPS32_JAL             8'h2E
`define MINIMIPS32_BEQ             8'h30
`define MINIMIPS32_BNE             8'h31

/*------------------- ͨRegister Configeration -------------------*/
`define REG_BUS         31: 0               // Width of register data
`define REG_ADDR_BUS    4 : 0               // Width of Register Address
`define REG_NUM         32                  // Number of GPRs
`define REG_NOP         5'b00000            // 0th Register