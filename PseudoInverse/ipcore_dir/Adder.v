////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: Adder.v
// /___/   /\     Timestamp: Sun Sep 04 19:12:45 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/Rodrigo/Desktop/OMP/Project/ipcore_dir/tmp/_cg/Adder.ngc C:/Users/Rodrigo/Desktop/OMP/Project/ipcore_dir/tmp/_cg/Adder.v 
// Device	: 5vlx110tff1136-1
// Input file	: C:/Users/Rodrigo/Desktop/OMP/Project/ipcore_dir/tmp/_cg/Adder.ngc
// Output file	: C:/Users/Rodrigo/Desktop/OMP/Project/ipcore_dir/tmp/_cg/Adder.v
// # of Modules	: 1
// Design Name	: Adder
// Xilinx        : D:\Xilinx\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Adder (
  clk, ce, add, s, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input add;
  output [31 : 0] s;
  input [31 : 0] a;
  input [31 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  INV   \blk00000001/blk00000081  (
    .I(add),
    .O(\blk00000001/sig00000044 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000080  (
    .I0(a[0]),
    .I1(add),
    .I2(b[0]),
    .O(\blk00000001/sig00000064 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000007f  (
    .I0(a[1]),
    .I1(add),
    .I2(b[1]),
    .O(\blk00000001/sig0000006f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000007e  (
    .I0(a[2]),
    .I1(add),
    .I2(b[2]),
    .O(\blk00000001/sig0000007a )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000007d  (
    .I0(a[3]),
    .I1(add),
    .I2(b[3]),
    .O(\blk00000001/sig0000007d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000007c  (
    .I0(a[4]),
    .I1(add),
    .I2(b[4]),
    .O(\blk00000001/sig0000007e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000007b  (
    .I0(a[5]),
    .I1(add),
    .I2(b[5]),
    .O(\blk00000001/sig0000007f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000007a  (
    .I0(a[6]),
    .I1(add),
    .I2(b[6]),
    .O(\blk00000001/sig00000080 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000079  (
    .I0(a[7]),
    .I1(add),
    .I2(b[7]),
    .O(\blk00000001/sig00000081 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000078  (
    .I0(a[8]),
    .I1(add),
    .I2(b[8]),
    .O(\blk00000001/sig00000082 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000077  (
    .I0(a[9]),
    .I1(add),
    .I2(b[9]),
    .O(\blk00000001/sig00000083 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000076  (
    .I0(a[10]),
    .I1(add),
    .I2(b[10]),
    .O(\blk00000001/sig00000065 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000075  (
    .I0(a[11]),
    .I1(add),
    .I2(b[11]),
    .O(\blk00000001/sig00000066 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000074  (
    .I0(a[12]),
    .I1(add),
    .I2(b[12]),
    .O(\blk00000001/sig00000067 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000073  (
    .I0(a[13]),
    .I1(add),
    .I2(b[13]),
    .O(\blk00000001/sig00000068 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000072  (
    .I0(a[14]),
    .I1(add),
    .I2(b[14]),
    .O(\blk00000001/sig00000069 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000071  (
    .I0(a[15]),
    .I1(add),
    .I2(b[15]),
    .O(\blk00000001/sig0000006a )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000070  (
    .I0(a[16]),
    .I1(add),
    .I2(b[16]),
    .O(\blk00000001/sig0000006b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000006f  (
    .I0(a[17]),
    .I1(add),
    .I2(b[17]),
    .O(\blk00000001/sig0000006c )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000006e  (
    .I0(a[18]),
    .I1(add),
    .I2(b[18]),
    .O(\blk00000001/sig0000006d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000006d  (
    .I0(a[19]),
    .I1(add),
    .I2(b[19]),
    .O(\blk00000001/sig0000006e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000006c  (
    .I0(a[20]),
    .I1(add),
    .I2(b[20]),
    .O(\blk00000001/sig00000070 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000006b  (
    .I0(a[21]),
    .I1(add),
    .I2(b[21]),
    .O(\blk00000001/sig00000071 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000006a  (
    .I0(a[22]),
    .I1(add),
    .I2(b[22]),
    .O(\blk00000001/sig00000072 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000069  (
    .I0(a[23]),
    .I1(add),
    .I2(b[23]),
    .O(\blk00000001/sig00000073 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000068  (
    .I0(a[24]),
    .I1(add),
    .I2(b[24]),
    .O(\blk00000001/sig00000074 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000067  (
    .I0(a[25]),
    .I1(add),
    .I2(b[25]),
    .O(\blk00000001/sig00000075 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000066  (
    .I0(a[26]),
    .I1(add),
    .I2(b[26]),
    .O(\blk00000001/sig00000076 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000065  (
    .I0(a[27]),
    .I1(add),
    .I2(b[27]),
    .O(\blk00000001/sig00000077 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000064  (
    .I0(a[28]),
    .I1(add),
    .I2(b[28]),
    .O(\blk00000001/sig00000078 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000063  (
    .I0(a[29]),
    .I1(add),
    .I2(b[29]),
    .O(\blk00000001/sig00000079 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000062  (
    .I0(a[30]),
    .I1(add),
    .I2(b[30]),
    .O(\blk00000001/sig0000007b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk00000061  (
    .I0(a[31]),
    .I1(add),
    .I2(b[31]),
    .O(\blk00000001/sig0000007c )
  );
  MUXCY   \blk00000001/blk00000060  (
    .CI(\blk00000001/sig00000044 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk0000005f  (
    .CI(\blk00000001/sig00000044 ),
    .LI(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig000000a4 )
  );
  XORCY   \blk00000001/blk0000005e  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig000000bc )
  );
  MUXCY   \blk00000001/blk0000005d  (
    .CI(\blk00000001/sig00000045 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig00000050 )
  );
  XORCY   \blk00000001/blk0000005c  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig0000006f ),
    .O(\blk00000001/sig000000af )
  );
  MUXCY   \blk00000001/blk0000005b  (
    .CI(\blk00000001/sig00000050 ),
    .DI(a[2]),
    .S(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig0000005b )
  );
  XORCY   \blk00000001/blk0000005a  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig000000ba )
  );
  MUXCY   \blk00000001/blk00000059  (
    .CI(\blk00000001/sig0000005b ),
    .DI(a[3]),
    .S(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig0000005d )
  );
  XORCY   \blk00000001/blk00000058  (
    .CI(\blk00000001/sig0000005b ),
    .LI(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig000000bd )
  );
  MUXCY   \blk00000001/blk00000057  (
    .CI(\blk00000001/sig0000005d ),
    .DI(a[4]),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig0000005e )
  );
  XORCY   \blk00000001/blk00000056  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000be )
  );
  MUXCY   \blk00000001/blk00000055  (
    .CI(\blk00000001/sig0000005e ),
    .DI(a[5]),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig0000005f )
  );
  XORCY   \blk00000001/blk00000054  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000bf )
  );
  MUXCY   \blk00000001/blk00000053  (
    .CI(\blk00000001/sig0000005f ),
    .DI(a[6]),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig00000060 )
  );
  XORCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000c0 )
  );
  MUXCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig00000060 ),
    .DI(a[7]),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000c1 )
  );
  MUXCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig00000061 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000c2 )
  );
  MUXCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig00000062 ),
    .DI(a[9]),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig000000c3 )
  );
  MUXCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig00000063 ),
    .DI(a[10]),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig00000046 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig00000047 ),
    .DI(a[12]),
    .S(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig00000048 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig000000a8 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig00000049 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig000000a9 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig0000004a ),
    .DI(a[15]),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig0000004b )
  );
  XORCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig000000aa )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig0000004b ),
    .DI(a[16]),
    .S(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig000000ab )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig0000004c ),
    .DI(a[17]),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig000000ac )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000004d ),
    .DI(a[18]),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig0000004d ),
    .LI(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig000000ad )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig0000004e ),
    .DI(a[19]),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig0000004f )
  );
  XORCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig000000ae )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000004f ),
    .DI(a[20]),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000004f ),
    .LI(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig000000b0 )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig00000051 ),
    .DI(a[21]),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000052 )
  );
  XORCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig00000051 ),
    .LI(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig000000b1 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000052 ),
    .DI(a[22]),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig00000053 )
  );
  XORCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig000000b2 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000053 ),
    .DI(a[23]),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig00000054 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig00000053 ),
    .LI(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig000000b3 )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000054 ),
    .DI(a[24]),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig00000055 )
  );
  XORCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig000000b4 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000055 ),
    .DI(a[25]),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig00000056 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig000000b5 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000056 ),
    .DI(a[26]),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000057 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000056 ),
    .LI(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig000000b6 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000057 ),
    .DI(a[27]),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig00000058 )
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000057 ),
    .LI(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig000000b7 )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000058 ),
    .DI(a[28]),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig00000059 )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000058 ),
    .LI(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig000000b8 )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000059 ),
    .DI(a[29]),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig0000005a )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000059 ),
    .LI(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig000000b9 )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig0000005a ),
    .DI(a[30]),
    .S(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig0000005a ),
    .LI(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig000000bb )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a4 ),
    .Q(s[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000af ),
    .Q(s[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ba ),
    .Q(s[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000bd ),
    .Q(s[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000be ),
    .Q(s[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000bf ),
    .Q(s[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000c0 ),
    .Q(s[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000c1 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000c2 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000c3 ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a5 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a6 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a7 ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a8 ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a9 ),
    .Q(s[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000aa ),
    .Q(s[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ab ),
    .Q(s[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ac ),
    .Q(s[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ad ),
    .Q(s[18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000ae ),
    .Q(s[19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b0 ),
    .Q(s[20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b1 ),
    .Q(s[21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b2 ),
    .Q(s[22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b3 ),
    .Q(s[23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b4 ),
    .Q(s[24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b5 ),
    .Q(s[25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b6 ),
    .Q(s[26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b7 ),
    .Q(s[27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b8 ),
    .Q(s[28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000b9 ),
    .Q(s[29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000bb ),
    .Q(s[30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000002  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000bc ),
    .Q(s[31])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
