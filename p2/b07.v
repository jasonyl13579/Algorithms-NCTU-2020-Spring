/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12
// Date      : Mon Apr 13 16:49:40 2020
/////////////////////////////////////////////////////////////


module b07 ( .punti_retta({punti_retta__7__, punti_retta__6__, 
        punti_retta__5__, punti_retta__4__, punti_retta__3__, punti_retta__2__, 
        punti_retta__1__, punti_retta__0__}), start, reset, clock );
  input start, reset, clock;
  output punti_retta__7__, punti_retta__6__, punti_retta__5__,
         punti_retta__4__, punti_retta__3__, punti_retta__2__,
         punti_retta__1__, punti_retta__0__;
  wire   stato__2__, stato__1__, stato__0__, cont__7__, cont__6__, cont__5__,
         cont__4__, cont__3__, cont__2__, cont__1__, cont__0__, mar__3__,
         mar__2__, mar__1__, mar__0__, x__7__, x__6__, x__5__, x__4__, x__3__,
         x__2__, x__1__, x__0__, y__6__, y__5__, y__4__, y__3__, y__2__,
         y__1__, y__0__, t__6__, t__5__, t__4__, t__3__, t__2__, t__1__,
         t__0__, N135, N136, N137, N138, N139, N140, N141, N142, N158, N159,
         N160, N161, N162, N163, N164, N165, N170, N171, N172, _U3/U1/Z_0 ,
         _U3/U1/Z_1 , _U3/U1/Z_2 , _U3/U1/Z_3 , _U3/U1/Z_4 , _U3/U1/Z_5 ,
         _U3/U1/Z_6 , _U3/U1/Z_7 , _U3/U2/Z_0 , _U3/U2/Z_1 , _U3/U2/Z_2 ,
         _U3/U2/Z_3 , _U3/U2/Z_4 , _U3/U2/Z_5 , _U3/U2/Z_6 , _U3/U2/Z_7 , n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, _r384/n76 ,
         _r384/n75 , _r384/n74 , _r384/n73 , _r384/n72 , _r384/n71 ,
         _r384/n70 , _r384/n69 , _r384/n68 , _r384/n67 , _r384/n66 ,
         _r384/n65 , _r384/n64 , _r384/n63 , _r384/n62 , _r384/n61 ,
         _r384/n60 , _r384/n59 , _r384/n58 , _r384/n57 , _r384/n56 ,
         _r384/n55 , _r384/n54 , _r384/n53 , _r384/n52 , _r384/n51 ,
         _r384/n50 , _r384/n49 , _r384/n48 , _r384/n47 , _r384/n46 ,
         _r384/n45 , _r384/n44 , _r384/n43 , _r384/n42 , _r384/n41 ,
         _r384/n40 , _r384/n39 , _r384/n38 , _r384/n37 , _r384/n36 ,
         _r384/n35 , _r384/n34 , _r384/n33 , _r384/n32 , _r384/n31 ,
         _r384/n30 , _r384/n29 , _r384/n28 , _r384/n27 , _r384/n26 ,
         _r384/n25 , _r384/n24 , _r384/n23 , _r384/n22 , _r384/n21 ,
         _r384/n20 , _r384/n19 , _r384/n18 , _r384/n17 , _r384/n16 ,
         _r384/n15 , _r384/n14 , _r384/n13 , _r384/n12 , _r384/n11 ,
         _r384/n10 , _r384/n9 , _r384/n8 , _r384/n7 , _r384/n6 , _r384/n5 ,
         _r384/n4 , _r384/n3 , _r384/n2 , _r384/n1 , _add_79_aco/n38 ,
         _add_79_aco/n37 , _add_79_aco/n36 , _add_79_aco/n35 ,
         _add_79_aco/n34 , _add_79_aco/n33 , _add_79_aco/n32 ,
         _add_79_aco/n31 , _add_79_aco/n30 , _add_79_aco/n29 ,
         _add_79_aco/n28 , _add_79_aco/n27 , _add_79_aco/n26 ,
         _add_79_aco/n25 , _add_79_aco/n24 , _add_79_aco/n23 ,
         _add_79_aco/n22 , _add_79_aco/n21 , _add_79_aco/n20 ,
         _add_79_aco/n19 , _add_79_aco/n18 , _add_79_aco/n17 ,
         _add_79_aco/n16 , _add_79_aco/n15 , _add_79_aco/n14 ,
         _add_79_aco/n13 , _add_79_aco/n12 , _add_79_aco/n11 ,
         _add_79_aco/n10 , _add_79_aco/n9 , _add_79_aco/n8 , _add_79_aco/n7 ,
         _add_79_aco/n6 , _add_79_aco/n5 , _add_79_aco/n4 , _add_79_aco/n3 ,
         _add_79_aco/n2 , _add_79_aco/n1 ;

  dffr mar_reg__0__ ( .d(n290), .clk(clock), .r(reset), .q(mar__0__) );
  dffr mar_reg__1__ ( .d(n288), .clk(clock), .r(reset), .q(mar__1__) );
  dffr mar_reg__2__ ( .d(n287), .clk(clock), .r(reset), .q(mar__2__) );
  dffr mar_reg__3__ ( .d(n289), .clk(clock), .r(reset), .q(mar__3__) );
  dffr stato_reg__2__ ( .d(N172), .clk(clock), .r(reset), .q(stato__2__) );
  dffr stato_reg__1__ ( .d(N171), .clk(clock), .r(reset), .q(stato__1__) );
  dffr stato_reg__0__ ( .d(N170), .clk(clock), .r(reset), .q(stato__0__) );
  dffr y_reg__6__ ( .d(n286), .clk(clock), .r(reset), .q(y__6__) );
  dffr y_reg__5__ ( .d(n285), .clk(clock), .r(reset), .q(y__5__) );
  dffr y_reg__4__ ( .d(n284), .clk(clock), .r(reset), .q(y__4__) );
  dffr y_reg__3__ ( .d(n283), .clk(clock), .r(reset), .q(y__3__) );
  dffr y_reg__2__ ( .d(n282), .clk(clock), .r(reset), .q(y__2__) );
  dffr y_reg__1__ ( .d(n281), .clk(clock), .r(reset), .q(y__1__) );
  dffr y_reg__0__ ( .d(n280), .clk(clock), .r(reset), .q(y__0__) );
  dffr t_reg__0__ ( .d(n279), .clk(clock), .r(reset), .q(t__0__) );
  dffr x_reg__0__ ( .d(n272), .clk(clock), .r(reset), .q(x__0__) );
  dffr t_reg__1__ ( .d(n278), .clk(clock), .r(reset), .q(t__1__) );
  dffr x_reg__1__ ( .d(n271), .clk(clock), .r(reset), .q(x__1__) );
  dffr t_reg__2__ ( .d(n277), .clk(clock), .r(reset), .q(t__2__) );
  dffr x_reg__2__ ( .d(n270), .clk(clock), .r(reset), .q(x__2__) );
  dffr t_reg__3__ ( .d(n276), .clk(clock), .r(reset), .q(t__3__) );
  dffr x_reg__3__ ( .d(n269), .clk(clock), .r(reset), .q(x__3__) );
  dffr t_reg__4__ ( .d(n275), .clk(clock), .r(reset), .q(t__4__) );
  dffr x_reg__4__ ( .d(n268), .clk(clock), .r(reset), .q(x__4__) );
  dffr t_reg__5__ ( .d(n274), .clk(clock), .r(reset), .q(t__5__) );
  dffr x_reg__5__ ( .d(n267), .clk(clock), .r(reset), .q(x__5__) );
  dffr t_reg__6__ ( .d(n273), .clk(clock), .r(reset), .q(t__6__) );
  dffr x_reg__6__ ( .d(n266), .clk(clock), .r(reset), .q(x__6__) );
  dffr x_reg__7__ ( .d(n265), .clk(clock), .r(reset), .q(x__7__) );
  dffr cont_reg__1__ ( .d(n257), .clk(clock), .r(reset), .q(cont__1__) );
  dffr cont_reg__2__ ( .d(n258), .clk(clock), .r(reset), .q(cont__2__) );
  dffr cont_reg__3__ ( .d(n259), .clk(clock), .r(reset), .q(cont__3__) );
  dffr cont_reg__4__ ( .d(n260), .clk(clock), .r(reset), .q(cont__4__) );
  dffr cont_reg__5__ ( .d(n261), .clk(clock), .r(reset), .q(cont__5__) );
  dffr cont_reg__6__ ( .d(n262), .clk(clock), .r(reset), .q(cont__6__) );
  dffr cont_reg__0__ ( .d(n264), .clk(clock), .r(reset), .q(cont__0__) );
  dffr cont_reg__7__ ( .d(n263), .clk(clock), .r(reset), .q(cont__7__) );
  dffr punti_retta_reg__0__ ( .d(n256), .clk(clock), .r(reset), .q(punti_retta__0__) );
  dffr punti_retta_reg__1__ ( .d(n255), .clk(clock), .r(reset), .q(punti_retta__1__) );
  dffr punti_retta_reg__2__ ( .d(n254), .clk(clock), .r(reset), .q(punti_retta__2__) );
  dffr punti_retta_reg__3__ ( .d(n253), .clk(clock), .r(reset), .q(punti_retta__3__) );
  dffr punti_retta_reg__4__ ( .d(n252), .clk(clock), .r(reset), .q(punti_retta__4__) );
  dffr punti_retta_reg__5__ ( .d(n251), .clk(clock), .r(reset), .q(punti_retta__5__) );
  dffr punti_retta_reg__6__ ( .d(n250), .clk(clock), .r(reset), .q(punti_retta__6__) );
  dffr punti_retta_reg__7__ ( .d(n249), .clk(clock), .r(reset), .q(punti_retta__7__) );
  or2 U297 ( .ip1(n292), .ip2(n293), .op(n290) );
  nor2 U298 ( .ip1(n294), .ip2(n295), .op(n293) );
  nor2 U299 ( .ip1(mar__0__), .ip2(n296), .op(n292) );
  or2 U300 ( .ip1(n297), .ip2(n298), .op(n289) );
  nor3 U301 ( .ip1(mar__3__), .ip2(n296), .ip3(n299), .op(n298) );
  nor2 U302 ( .ip1(n300), .ip2(n301), .op(n297) );
  nor2 U303 ( .ip1(n302), .ip2(n303), .op(n300) );
  nor2 U304 ( .ip1(n304), .ip2(n296), .op(n302) );
  or2 U305 ( .ip1(n305), .ip2(n306), .op(n288) );
  nor3 U306 ( .ip1(mar__1__), .ip2(n296), .ip3(n294), .op(n306) );
  and2 U307 ( .ip1(n307), .ip2(mar__1__), .op(n305) );
  or2 U308 ( .ip1(n308), .ip2(n309), .op(n287) );
  nor3 U309 ( .ip1(mar__2__), .ip2(n296), .ip3(n310), .op(n309) );
  nor2 U310 ( .ip1(n311), .ip2(n312), .op(n308) );
  nor2 U311 ( .ip1(n313), .ip2(n307), .op(n311) );
  nand2 U312 ( .ip1(n295), .ip2(n314), .op(n307) );
  or2 U313 ( .ip1(n296), .ip2(mar__0__), .op(n314) );
  inv U314 ( .ip(n303), .op(n295) );
  nor2 U315 ( .ip1(n315), .ip2(n316), .op(n303) );
  nor2 U316 ( .ip1(mar__1__), .ip2(n296), .op(n313) );
  nor2 U317 ( .ip1(n316), .ip2(n317), .op(n296) );
  nand2 U318 ( .ip1(n318), .ip2(n319), .op(n286) );
  nand2 U319 ( .ip1(y__6__), .ip2(n320), .op(n319) );
  nand2 U320 ( .ip1(n318), .ip2(n321), .op(n285) );
  nand2 U321 ( .ip1(y__5__), .ip2(n320), .op(n321) );
  nand2 U322 ( .ip1(n318), .ip2(n322), .op(n284) );
  nand2 U323 ( .ip1(y__4__), .ip2(n320), .op(n322) );
  nand2 U324 ( .ip1(n318), .ip2(n323), .op(n283) );
  nand2 U325 ( .ip1(y__3__), .ip2(n320), .op(n323) );
  nand3 U326 ( .ip1(n324), .ip2(n310), .ip3(n325), .op(n318) );
  nor2 U327 ( .ip1(n326), .ip2(n327), .op(n325) );
  nor2 U328 ( .ip1(mar__0__), .ip2(n328), .op(n327) );
  nor2 U329 ( .ip1(n294), .ip2(n301), .op(n326) );
  or2 U330 ( .ip1(n329), .ip2(n330), .op(n282) );
  nor2 U331 ( .ip1(n331), .ip2(n332), .op(n330) );
  nor2 U332 ( .ip1(n333), .ip2(n334), .op(n329) );
  or3 U333 ( .ip1(n335), .ip2(n336), .ip3(n337), .op(n281) );
  nor2 U334 ( .ip1(n331), .ip2(n338), .op(n337) );
  nor3 U335 ( .ip1(mar__0__), .ip2(n334), .ip3(n339), .op(n336) );
  and3 U336 ( .ip1(mar__0__), .ip2(n340), .ip3(n331), .op(n335) );
  or2 U337 ( .ip1(n341), .ip2(n342), .op(n280) );
  nor2 U338 ( .ip1(n331), .ip2(n343), .op(n342) );
  nor2 U339 ( .ip1(n344), .ip2(n334), .op(n341) );
  inv U340 ( .ip(n324), .op(n334) );
  nor2 U341 ( .ip1(n320), .ip2(mar__2__), .op(n324) );
  or2 U342 ( .ip1(n345), .ip2(n346), .op(n279) );
  nor2 U343 ( .ip1(n347), .ip2(n348), .op(n346) );
  nor2 U344 ( .ip1(n316), .ip2(n349), .op(n345) );
  or2 U345 ( .ip1(n350), .ip2(n351), .op(n278) );
  nor2 U346 ( .ip1(n347), .ip2(n352), .op(n351) );
  nor2 U347 ( .ip1(n316), .ip2(n353), .op(n350) );
  or2 U348 ( .ip1(n354), .ip2(n355), .op(n277) );
  nor2 U349 ( .ip1(n347), .ip2(n356), .op(n355) );
  nor2 U350 ( .ip1(n316), .ip2(n357), .op(n354) );
  or2 U351 ( .ip1(n358), .ip2(n359), .op(n276) );
  nor2 U352 ( .ip1(n347), .ip2(n360), .op(n359) );
  nor2 U353 ( .ip1(n316), .ip2(n361), .op(n358) );
  or2 U354 ( .ip1(n362), .ip2(n363), .op(n275) );
  nor2 U355 ( .ip1(n347), .ip2(n364), .op(n363) );
  nor2 U356 ( .ip1(n316), .ip2(n365), .op(n362) );
  or2 U357 ( .ip1(n366), .ip2(n367), .op(n274) );
  nor2 U358 ( .ip1(n347), .ip2(n368), .op(n367) );
  nor2 U359 ( .ip1(n316), .ip2(n369), .op(n366) );
  or2 U360 ( .ip1(n370), .ip2(n371), .op(n273) );
  nor2 U361 ( .ip1(n347), .ip2(n372), .op(n371) );
  nor2 U362 ( .ip1(n316), .ip2(n373), .op(n370) );
  or3 U363 ( .ip1(n374), .ip2(n375), .ip3(n376), .op(n272) );
  nor2 U364 ( .ip1(n377), .ip2(n348), .op(n376) );
  nor2 U365 ( .ip1(n378), .ip2(n379), .op(n375) );
  nor2 U366 ( .ip1(n344), .ip2(n380), .op(n374) );
  and2 U367 ( .ip1(n339), .ip2(n381), .op(n344) );
  nand2 U368 ( .ip1(n382), .ip2(n301), .op(n381) );
  inv U369 ( .ip(n328), .op(n339) );
  nand3 U370 ( .ip1(n383), .ip2(n384), .ip3(n385), .op(n271) );
  nor2 U371 ( .ip1(n386), .ip2(n387), .op(n385) );
  nor2 U372 ( .ip1(n377), .ip2(n352), .op(n387) );
  nor2 U373 ( .ip1(n388), .ip2(n378), .op(n386) );
  nand3 U374 ( .ip1(mar__0__), .ip2(n340), .ip3(n389), .op(n383) );
  nand2 U375 ( .ip1(mar__1__), .ip2(n390), .op(n340) );
  nand2 U376 ( .ip1(mar__3__), .ip2(mar__2__), .op(n390) );
  or3 U377 ( .ip1(n391), .ip2(n392), .ip3(n393), .op(n270) );
  nor2 U378 ( .ip1(n377), .ip2(n356), .op(n393) );
  nor2 U379 ( .ip1(n378), .ip2(n394), .op(n392) );
  nor2 U380 ( .ip1(n333), .ip2(n380), .op(n391) );
  inv U381 ( .ip(n395), .op(n380) );
  nor2 U382 ( .ip1(n328), .ip2(n396), .op(n333) );
  or3 U383 ( .ip1(n397), .ip2(n398), .ip3(n399), .op(n269) );
  nor2 U384 ( .ip1(n377), .ip2(n360), .op(n398) );
  nor2 U385 ( .ip1(n378), .ip2(n400), .op(n397) );
  or3 U386 ( .ip1(n401), .ip2(n402), .ip3(n399), .op(n268) );
  nor2 U387 ( .ip1(n377), .ip2(n364), .op(n402) );
  nor2 U388 ( .ip1(n378), .ip2(n403), .op(n401) );
  or3 U389 ( .ip1(n404), .ip2(n405), .ip3(n399), .op(n267) );
  nor2 U390 ( .ip1(n377), .ip2(n368), .op(n405) );
  nor2 U391 ( .ip1(n378), .ip2(n406), .op(n404) );
  or3 U392 ( .ip1(n407), .ip2(n408), .ip3(n399), .op(n266) );
  nor2 U393 ( .ip1(n377), .ip2(n372), .op(n408) );
  nor2 U394 ( .ip1(n378), .ip2(n409), .op(n407) );
  or3 U395 ( .ip1(n410), .ip2(n411), .ip3(n399), .op(n265) );
  nand2 U396 ( .ip1(n384), .ip2(n412), .op(n399) );
  nand2 U397 ( .ip1(n396), .ip2(n395), .op(n412) );
  nor3 U398 ( .ip1(mar__1__), .ip2(mar__3__), .ip3(n294), .op(n396) );
  nand3 U399 ( .ip1(n328), .ip2(n294), .ip3(n395), .op(n384) );
  nor2 U400 ( .ip1(n413), .ip2(mar__2__), .op(n395) );
  inv U401 ( .ip(mar__0__), .op(n294) );
  nor2 U402 ( .ip1(n301), .ip2(n382), .op(n328) );
  inv U403 ( .ip(mar__1__), .op(n382) );
  nor2 U404 ( .ip1(n377), .ip2(n414), .op(n411) );
  nor2 U405 ( .ip1(n378), .ip2(n415), .op(n410) );
  nand2 U406 ( .ip1(n377), .ip2(n413), .op(n378) );
  or2 U407 ( .ip1(n416), .ip2(n417), .op(n264) );
  nor2 U408 ( .ip1(n418), .ip2(n419), .op(n417) );
  nor2 U409 ( .ip1(n348), .ip2(n420), .op(n416) );
  inv U410 ( .ip(N135), .op(n348) );
  or2 U411 ( .ip1(n421), .ip2(n422), .op(n263) );
  nor2 U412 ( .ip1(n418), .ip2(n423), .op(n422) );
  nor2 U413 ( .ip1(n414), .ip2(n420), .op(n421) );
  inv U414 ( .ip(N142), .op(n414) );
  or2 U415 ( .ip1(n424), .ip2(n425), .op(n262) );
  nor2 U416 ( .ip1(n418), .ip2(n426), .op(n425) );
  nor2 U417 ( .ip1(n372), .ip2(n420), .op(n424) );
  inv U418 ( .ip(N141), .op(n372) );
  or2 U419 ( .ip1(n427), .ip2(n428), .op(n261) );
  nor2 U420 ( .ip1(n418), .ip2(n429), .op(n428) );
  nor2 U421 ( .ip1(n368), .ip2(n420), .op(n427) );
  inv U422 ( .ip(N140), .op(n368) );
  or2 U423 ( .ip1(n430), .ip2(n431), .op(n260) );
  nor2 U424 ( .ip1(n418), .ip2(n432), .op(n431) );
  nor2 U425 ( .ip1(n364), .ip2(n420), .op(n430) );
  inv U426 ( .ip(N139), .op(n364) );
  or2 U427 ( .ip1(n433), .ip2(n434), .op(n259) );
  nor2 U428 ( .ip1(n418), .ip2(n435), .op(n434) );
  nor2 U429 ( .ip1(n360), .ip2(n420), .op(n433) );
  inv U430 ( .ip(N138), .op(n360) );
  or2 U431 ( .ip1(n436), .ip2(n437), .op(n258) );
  nor2 U432 ( .ip1(n418), .ip2(n438), .op(n437) );
  nor2 U433 ( .ip1(n356), .ip2(n420), .op(n436) );
  inv U434 ( .ip(N137), .op(n356) );
  or2 U435 ( .ip1(n439), .ip2(n440), .op(n257) );
  nor2 U436 ( .ip1(n418), .ip2(n441), .op(n440) );
  nor2 U437 ( .ip1(n352), .ip2(n420), .op(n439) );
  nand2 U438 ( .ip1(n317), .ip2(n418), .op(n420) );
  nand2 U439 ( .ip1(n442), .ip2(n443), .op(n418) );
  nand2 U440 ( .ip1(start), .ip2(n444), .op(n443) );
  inv U441 ( .ip(N136), .op(n352) );
  nand2 U442 ( .ip1(n445), .ip2(n446), .op(n256) );
  nand2 U443 ( .ip1(N158), .ip2(n447), .op(n446) );
  nand2 U444 ( .ip1(punti_retta__0__), .ip2(n448), .op(n445) );
  nand2 U445 ( .ip1(n449), .ip2(n450), .op(n255) );
  nand2 U446 ( .ip1(N159), .ip2(n447), .op(n450) );
  nand2 U447 ( .ip1(punti_retta__1__), .ip2(n448), .op(n449) );
  nand2 U448 ( .ip1(n451), .ip2(n452), .op(n254) );
  nand2 U449 ( .ip1(N160), .ip2(n447), .op(n452) );
  nand2 U450 ( .ip1(punti_retta__2__), .ip2(n448), .op(n451) );
  nand2 U451 ( .ip1(n453), .ip2(n454), .op(n253) );
  nand2 U452 ( .ip1(N161), .ip2(n447), .op(n454) );
  nand2 U453 ( .ip1(punti_retta__3__), .ip2(n448), .op(n453) );
  nand2 U454 ( .ip1(n455), .ip2(n456), .op(n252) );
  nand2 U455 ( .ip1(N162), .ip2(n447), .op(n456) );
  nand2 U456 ( .ip1(punti_retta__4__), .ip2(n448), .op(n455) );
  nand2 U457 ( .ip1(n457), .ip2(n458), .op(n251) );
  nand2 U458 ( .ip1(N163), .ip2(n447), .op(n458) );
  nand2 U459 ( .ip1(punti_retta__5__), .ip2(n448), .op(n457) );
  nand2 U460 ( .ip1(n459), .ip2(n460), .op(n250) );
  nand2 U461 ( .ip1(N164), .ip2(n447), .op(n460) );
  nand2 U462 ( .ip1(punti_retta__6__), .ip2(n448), .op(n459) );
  nand2 U463 ( .ip1(n461), .ip2(n462), .op(n249) );
  nand2 U464 ( .ip1(N165), .ip2(n447), .op(n462) );
  nor2 U465 ( .ip1(n448), .ip2(n463), .op(n447) );
  nand2 U466 ( .ip1(punti_retta__7__), .ip2(n448), .op(n461) );
  or3 U467 ( .ip1(_U3/U2/Z_7 ), .ip2(n464), .ip3(n465), .op(_U3/U2/Z_6 ) );
  nor2 U468 ( .ip1(n466), .ip2(n467), .op(n465) );
  inv U469 ( .ip(y__6__), .op(n466) );
  nor2 U470 ( .ip1(n320), .ip2(n373), .op(n464) );
  inv U471 ( .ip(t__6__), .op(n373) );
  or3 U472 ( .ip1(n468), .ip2(n469), .ip3(n470), .op(_U3/U2/Z_5 ) );
  nor2 U473 ( .ip1(n471), .ip2(n467), .op(n470) );
  inv U474 ( .ip(y__5__), .op(n471) );
  nor2 U475 ( .ip1(n320), .ip2(n369), .op(n469) );
  inv U476 ( .ip(t__5__), .op(n369) );
  nor2 U477 ( .ip1(n347), .ip2(n406), .op(n468) );
  or3 U478 ( .ip1(n472), .ip2(n473), .ip3(n474), .op(_U3/U2/Z_4 ) );
  nor2 U479 ( .ip1(n475), .ip2(n467), .op(n474) );
  inv U480 ( .ip(y__4__), .op(n475) );
  nor2 U481 ( .ip1(n320), .ip2(n365), .op(n473) );
  inv U482 ( .ip(t__4__), .op(n365) );
  nor2 U483 ( .ip1(n347), .ip2(n403), .op(n472) );
  or3 U484 ( .ip1(n476), .ip2(n477), .ip3(n478), .op(_U3/U2/Z_3 ) );
  nor2 U485 ( .ip1(n479), .ip2(n467), .op(n478) );
  inv U486 ( .ip(y__3__), .op(n479) );
  nor2 U487 ( .ip1(n320), .ip2(n361), .op(n477) );
  inv U488 ( .ip(t__3__), .op(n361) );
  nor2 U489 ( .ip1(n347), .ip2(n400), .op(n476) );
  or3 U490 ( .ip1(n480), .ip2(n481), .ip3(n482), .op(_U3/U2/Z_2 ) );
  nor2 U491 ( .ip1(n332), .ip2(n467), .op(n482) );
  inv U492 ( .ip(y__2__), .op(n332) );
  nor2 U493 ( .ip1(n320), .ip2(n357), .op(n481) );
  inv U494 ( .ip(t__2__), .op(n357) );
  nor2 U495 ( .ip1(n347), .ip2(n394), .op(n480) );
  or3 U496 ( .ip1(n483), .ip2(n484), .ip3(n485), .op(_U3/U2/Z_1 ) );
  nor2 U497 ( .ip1(n338), .ip2(n467), .op(n485) );
  inv U498 ( .ip(y__1__), .op(n338) );
  nor2 U499 ( .ip1(n320), .ip2(n353), .op(n484) );
  inv U500 ( .ip(t__1__), .op(n353) );
  nor2 U501 ( .ip1(n388), .ip2(n347), .op(n483) );
  nand3 U502 ( .ip1(n486), .ip2(n442), .ip3(n487), .op(_U3/U2/Z_0 ) );
  nor2 U503 ( .ip1(n488), .ip2(n489), .op(n487) );
  nor2 U504 ( .ip1(n343), .ip2(n467), .op(n489) );
  inv U505 ( .ip(y__0__), .op(n343) );
  nor2 U506 ( .ip1(n320), .ip2(n349), .op(n488) );
  inv U507 ( .ip(t__0__), .op(n349) );
  nand2 U508 ( .ip1(x__0__), .ip2(n316), .op(n486) );
  or2 U509 ( .ip1(n490), .ip2(_U3/U2/Z_7 ), .op(_U3/U1/Z_7 ) );
  nor2 U510 ( .ip1(n409), .ip2(n347), .op(_U3/U2/Z_7 ) );
  nor2 U511 ( .ip1(n423), .ip2(n442), .op(n490) );
  inv U512 ( .ip(cont__7__), .op(n423) );
  or2 U513 ( .ip1(n491), .ip2(n492), .op(_U3/U1/Z_6 ) );
  nor2 U514 ( .ip1(n493), .ip2(n409), .op(n492) );
  nor2 U515 ( .ip1(n426), .ip2(n442), .op(n491) );
  inv U516 ( .ip(cont__6__), .op(n426) );
  or2 U517 ( .ip1(n494), .ip2(n495), .op(_U3/U1/Z_5 ) );
  nor2 U518 ( .ip1(n493), .ip2(n406), .op(n495) );
  inv U519 ( .ip(x__5__), .op(n406) );
  nor2 U520 ( .ip1(n429), .ip2(n442), .op(n494) );
  inv U521 ( .ip(cont__5__), .op(n429) );
  or2 U522 ( .ip1(n496), .ip2(n497), .op(_U3/U1/Z_4 ) );
  nor2 U523 ( .ip1(n493), .ip2(n403), .op(n497) );
  inv U524 ( .ip(x__4__), .op(n403) );
  nor2 U525 ( .ip1(n432), .ip2(n442), .op(n496) );
  inv U526 ( .ip(cont__4__), .op(n432) );
  or2 U527 ( .ip1(n498), .ip2(n499), .op(_U3/U1/Z_3 ) );
  nor2 U528 ( .ip1(n493), .ip2(n400), .op(n499) );
  inv U529 ( .ip(x__3__), .op(n400) );
  nor2 U530 ( .ip1(n435), .ip2(n442), .op(n498) );
  inv U531 ( .ip(cont__3__), .op(n435) );
  or2 U532 ( .ip1(n500), .ip2(n501), .op(_U3/U1/Z_2 ) );
  nor2 U533 ( .ip1(n493), .ip2(n394), .op(n501) );
  inv U534 ( .ip(x__2__), .op(n394) );
  nor2 U535 ( .ip1(n438), .ip2(n442), .op(n500) );
  inv U536 ( .ip(cont__2__), .op(n438) );
  or2 U537 ( .ip1(n502), .ip2(n503), .op(_U3/U1/Z_1 ) );
  nor2 U538 ( .ip1(n493), .ip2(n388), .op(n503) );
  nor2 U539 ( .ip1(n441), .ip2(n442), .op(n502) );
  inv U540 ( .ip(cont__1__), .op(n441) );
  or2 U541 ( .ip1(n504), .ip2(n505), .op(_U3/U1/Z_0 ) );
  nor2 U542 ( .ip1(n493), .ip2(n379), .op(n505) );
  inv U543 ( .ip(x__0__), .op(n379) );
  nor2 U544 ( .ip1(n419), .ip2(n442), .op(n504) );
  nand3 U545 ( .ip1(n317), .ip2(n506), .ip3(n291), .op(n442) );
  and3 U546 ( .ip1(n507), .ip2(n508), .ip3(n509), .op(n291) );
  nor3 U547 ( .ip1(n510), .ip2(x__5__), .ip3(x__4__), .op(n509) );
  nand2 U548 ( .ip1(n409), .ip2(n415), .op(n510) );
  inv U549 ( .ip(x__7__), .op(n415) );
  inv U550 ( .ip(x__6__), .op(n409) );
  nor2 U551 ( .ip1(x__3__), .ip2(x__2__), .op(n508) );
  nor2 U552 ( .ip1(x__0__), .ip2(n388), .op(n507) );
  inv U553 ( .ip(x__1__), .op(n388) );
  inv U554 ( .ip(cont__0__), .op(n419) );
  nand2 U555 ( .ip1(n493), .ip2(n511), .op(N172) );
  nand3 U556 ( .ip1(start), .ip2(n317), .ip3(n512), .op(n511) );
  and2 U557 ( .ip1(n377), .ip2(n347), .op(n493) );
  inv U558 ( .ip(n316), .op(n347) );
  nor3 U559 ( .ip1(n513), .ip2(stato__2__), .ip3(n514), .op(n316) );
  and2 U560 ( .ip1(n320), .ip2(n467), .op(n377) );
  inv U561 ( .ip(n331), .op(n320) );
  nor3 U562 ( .ip1(stato__0__), .ip2(stato__1__), .ip3(n515), .op(n331) );
  nand3 U563 ( .ip1(n413), .ip2(n467), .ip3(n516), .op(N171) );
  nor2 U564 ( .ip1(n517), .ip2(n315), .op(n516) );
  or2 U565 ( .ip1(n518), .ip2(n519), .op(n315) );
  and2 U566 ( .ip1(n444), .ip2(start), .op(n519) );
  nor2 U567 ( .ip1(n512), .ip2(n463), .op(n518) );
  and2 U568 ( .ip1(n317), .ip2(start), .op(n517) );
  nand3 U569 ( .ip1(stato__0__), .ip2(n514), .ip3(stato__2__), .op(n467) );
  nand3 U570 ( .ip1(n448), .ip2(n413), .ip3(n520), .op(N170) );
  nand2 U571 ( .ip1(n513), .ip2(n514), .op(n520) );
  inv U572 ( .ip(n389), .op(n413) );
  nor3 U573 ( .ip1(stato__0__), .ip2(stato__2__), .ip3(n514), .op(n389) );
  or2 U574 ( .ip1(n521), .ip2(start), .op(n448) );
  nor2 U575 ( .ip1(n444), .ip2(n522), .op(n521) );
  nor2 U576 ( .ip1(n463), .ip2(n506), .op(n522) );
  inv U577 ( .ip(n512), .op(n506) );
  nor2 U578 ( .ip1(n301), .ip2(n299), .op(n512) );
  inv U579 ( .ip(n304), .op(n299) );
  nor2 U580 ( .ip1(n312), .ip2(n310), .op(n304) );
  nand2 U581 ( .ip1(mar__1__), .ip2(mar__0__), .op(n310) );
  inv U582 ( .ip(mar__2__), .op(n312) );
  inv U583 ( .ip(mar__3__), .op(n301) );
  inv U584 ( .ip(n317), .op(n463) );
  nor3 U585 ( .ip1(n514), .ip2(stato__0__), .ip3(n515), .op(n317) );
  inv U586 ( .ip(stato__2__), .op(n515) );
  inv U587 ( .ip(stato__1__), .op(n514) );
  nor3 U588 ( .ip1(stato__1__), .ip2(stato__2__), .ip3(n513), .op(n444) );
  inv U589 ( .ip(stato__0__), .op(n513) );
  nor2 _r384/U84  ( .ip1(_U3/U1/Z_0 ), .ip2(_r384/n8 ), .op(_r384/n75 ) );
  nor2 _r384/U83  ( .ip1(_U3/U2/Z_0 ), .ip2(_r384/n1 ), .op(_r384/n76 ) );
  or2 _r384/U82  ( .ip1(_r384/n75 ), .ip2(_r384/n76 ), .op(N135) );
  nor2 _r384/U81  ( .ip1(_r384/n8 ), .ip2(_r384/n1 ), .op(_r384/n68 ) );
  nor2 _r384/U80  ( .ip1(_U3/U1/Z_1 ), .ip2(_r384/n9 ), .op(_r384/n73 ) );
  and2 _r384/U79  ( .ip1(_r384/n9 ), .ip2(_U3/U1/Z_1 ), .op(_r384/n74 ) );
  nor2 _r384/U78  ( .ip1(_r384/n73 ), .ip2(_r384/n74 ), .op(_r384/n72 ) );
  and2 _r384/U77  ( .ip1(_r384/n68 ), .ip2(_r384/n72 ), .op(_r384/n70 ) );
  nor2 _r384/U76  ( .ip1(_r384/n68 ), .ip2(_r384/n72 ), .op(_r384/n71 ) );
  or2 _r384/U75  ( .ip1(_r384/n70 ), .ip2(_r384/n71 ), .op(N136) );
  nor2 _r384/U74  ( .ip1(_r384/n68 ), .ip2(_U3/U1/Z_1 ), .op(_r384/n69 ) );
  nor2 _r384/U73  ( .ip1(_r384/n69 ), .ip2(_r384/n9 ), .op(_r384/n66 ) );
  and2 _r384/U72  ( .ip1(_r384/n68 ), .ip2(_U3/U1/Z_1 ), .op(_r384/n67 ) );
  nor2 _r384/U71  ( .ip1(_r384/n66 ), .ip2(_r384/n67 ), .op(_r384/n59 ) );
  nor2 _r384/U70  ( .ip1(_U3/U1/Z_2 ), .ip2(_r384/n10 ), .op(_r384/n64 ) );
  nor2 _r384/U69  ( .ip1(_U3/U2/Z_2 ), .ip2(_r384/n2 ), .op(_r384/n65 ) );
  nor2 _r384/U68  ( .ip1(_r384/n64 ), .ip2(_r384/n65 ), .op(_r384/n63 ) );
  and2 _r384/U67  ( .ip1(_r384/n59 ), .ip2(_r384/n63 ), .op(_r384/n61 ) );
  nor2 _r384/U66  ( .ip1(_r384/n59 ), .ip2(_r384/n63 ), .op(_r384/n62 ) );
  nor2 _r384/U65  ( .ip1(_r384/n61 ), .ip2(_r384/n62 ), .op(N137) );
  and2 _r384/U64  ( .ip1(_r384/n2 ), .ip2(_r384/n59 ), .op(_r384/n60 ) );
  nor2 _r384/U63  ( .ip1(_r384/n60 ), .ip2(_r384/n10 ), .op(_r384/n57 ) );
  nor2 _r384/U62  ( .ip1(_r384/n59 ), .ip2(_r384/n2 ), .op(_r384/n58 ) );
  nor2 _r384/U61  ( .ip1(_r384/n57 ), .ip2(_r384/n58 ), .op(_r384/n50 ) );
  nor2 _r384/U60  ( .ip1(_U3/U1/Z_3 ), .ip2(_r384/n11 ), .op(_r384/n55 ) );
  nor2 _r384/U59  ( .ip1(_U3/U2/Z_3 ), .ip2(_r384/n3 ), .op(_r384/n56 ) );
  nor2 _r384/U58  ( .ip1(_r384/n55 ), .ip2(_r384/n56 ), .op(_r384/n54 ) );
  and2 _r384/U57  ( .ip1(_r384/n50 ), .ip2(_r384/n54 ), .op(_r384/n52 ) );
  nor2 _r384/U56  ( .ip1(_r384/n50 ), .ip2(_r384/n54 ), .op(_r384/n53 ) );
  nor2 _r384/U55  ( .ip1(_r384/n52 ), .ip2(_r384/n53 ), .op(N138) );
  and2 _r384/U54  ( .ip1(_r384/n3 ), .ip2(_r384/n50 ), .op(_r384/n51 ) );
  nor2 _r384/U53  ( .ip1(_r384/n51 ), .ip2(_r384/n11 ), .op(_r384/n48 ) );
  nor2 _r384/U52  ( .ip1(_r384/n50 ), .ip2(_r384/n3 ), .op(_r384/n49 ) );
  nor2 _r384/U51  ( .ip1(_r384/n48 ), .ip2(_r384/n49 ), .op(_r384/n41 ) );
  nor2 _r384/U50  ( .ip1(_U3/U1/Z_4 ), .ip2(_r384/n12 ), .op(_r384/n46 ) );
  nor2 _r384/U49  ( .ip1(_U3/U2/Z_4 ), .ip2(_r384/n4 ), .op(_r384/n47 ) );
  nor2 _r384/U48  ( .ip1(_r384/n46 ), .ip2(_r384/n47 ), .op(_r384/n45 ) );
  and2 _r384/U47  ( .ip1(_r384/n41 ), .ip2(_r384/n45 ), .op(_r384/n43 ) );
  nor2 _r384/U46  ( .ip1(_r384/n41 ), .ip2(_r384/n45 ), .op(_r384/n44 ) );
  nor2 _r384/U45  ( .ip1(_r384/n43 ), .ip2(_r384/n44 ), .op(N139) );
  and2 _r384/U44  ( .ip1(_r384/n4 ), .ip2(_r384/n41 ), .op(_r384/n42 ) );
  nor2 _r384/U43  ( .ip1(_r384/n42 ), .ip2(_r384/n12 ), .op(_r384/n39 ) );
  nor2 _r384/U42  ( .ip1(_r384/n41 ), .ip2(_r384/n4 ), .op(_r384/n40 ) );
  nor2 _r384/U41  ( .ip1(_r384/n39 ), .ip2(_r384/n40 ), .op(_r384/n32 ) );
  nor2 _r384/U40  ( .ip1(_U3/U1/Z_5 ), .ip2(_r384/n13 ), .op(_r384/n37 ) );
  nor2 _r384/U39  ( .ip1(_U3/U2/Z_5 ), .ip2(_r384/n5 ), .op(_r384/n38 ) );
  nor2 _r384/U38  ( .ip1(_r384/n37 ), .ip2(_r384/n38 ), .op(_r384/n36 ) );
  and2 _r384/U37  ( .ip1(_r384/n32 ), .ip2(_r384/n36 ), .op(_r384/n34 ) );
  nor2 _r384/U36  ( .ip1(_r384/n32 ), .ip2(_r384/n36 ), .op(_r384/n35 ) );
  nor2 _r384/U35  ( .ip1(_r384/n34 ), .ip2(_r384/n35 ), .op(N140) );
  and2 _r384/U34  ( .ip1(_r384/n5 ), .ip2(_r384/n32 ), .op(_r384/n33 ) );
  nor2 _r384/U33  ( .ip1(_r384/n33 ), .ip2(_r384/n13 ), .op(_r384/n30 ) );
  nor2 _r384/U32  ( .ip1(_r384/n32 ), .ip2(_r384/n5 ), .op(_r384/n31 ) );
  nor2 _r384/U31  ( .ip1(_r384/n30 ), .ip2(_r384/n31 ), .op(_r384/n21 ) );
  nor2 _r384/U30  ( .ip1(_U3/U1/Z_6 ), .ip2(_r384/n14 ), .op(_r384/n28 ) );
  nor2 _r384/U29  ( .ip1(_U3/U2/Z_6 ), .ip2(_r384/n6 ), .op(_r384/n29 ) );
  nor2 _r384/U28  ( .ip1(_r384/n28 ), .ip2(_r384/n29 ), .op(_r384/n27 ) );
  and2 _r384/U27  ( .ip1(_r384/n21 ), .ip2(_r384/n27 ), .op(_r384/n25 ) );
  nor2 _r384/U26  ( .ip1(_r384/n21 ), .ip2(_r384/n27 ), .op(_r384/n26 ) );
  nor2 _r384/U25  ( .ip1(_r384/n25 ), .ip2(_r384/n26 ), .op(N141) );
  and2 _r384/U24  ( .ip1(_r384/n7 ), .ip2(_U3/U2/Z_7 ), .op(_r384/n23 ) );
  nor2 _r384/U23  ( .ip1(_U3/U2/Z_7 ), .ip2(_r384/n7 ), .op(_r384/n24 ) );
  nor2 _r384/U22  ( .ip1(_r384/n23 ), .ip2(_r384/n24 ), .op(_r384/n18 ) );
  and2 _r384/U21  ( .ip1(_r384/n6 ), .ip2(_r384/n21 ), .op(_r384/n22 ) );
  nor2 _r384/U20  ( .ip1(_r384/n22 ), .ip2(_r384/n14 ), .op(_r384/n19 ) );
  nor2 _r384/U19  ( .ip1(_r384/n21 ), .ip2(_r384/n6 ), .op(_r384/n20 ) );
  nor2 _r384/U18  ( .ip1(_r384/n19 ), .ip2(_r384/n20 ), .op(_r384/n17 ) );
  and2 _r384/U17  ( .ip1(_r384/n18 ), .ip2(_r384/n17 ), .op(_r384/n15 ) );
  nor2 _r384/U16  ( .ip1(_r384/n17 ), .ip2(_r384/n18 ), .op(_r384/n16 ) );
  nor2 _r384/U15  ( .ip1(_r384/n15 ), .ip2(_r384/n16 ), .op(N142) );
  inv _r384/U14  ( .ip(_U3/U2/Z_6 ), .op(_r384/n14 ) );
  inv _r384/U13  ( .ip(_U3/U2/Z_5 ), .op(_r384/n13 ) );
  inv _r384/U12  ( .ip(_U3/U2/Z_4 ), .op(_r384/n12 ) );
  inv _r384/U11  ( .ip(_U3/U2/Z_3 ), .op(_r384/n11 ) );
  inv _r384/U10  ( .ip(_U3/U2/Z_2 ), .op(_r384/n10 ) );
  inv _r384/U9  ( .ip(_U3/U2/Z_1 ), .op(_r384/n9 ) );
  inv _r384/U8  ( .ip(_U3/U2/Z_0 ), .op(_r384/n8 ) );
  inv _r384/U7  ( .ip(_U3/U1/Z_7 ), .op(_r384/n7 ) );
  inv _r384/U6  ( .ip(_U3/U1/Z_6 ), .op(_r384/n6 ) );
  inv _r384/U5  ( .ip(_U3/U1/Z_5 ), .op(_r384/n5 ) );
  inv _r384/U4  ( .ip(_U3/U1/Z_4 ), .op(_r384/n4 ) );
  inv _r384/U3  ( .ip(_U3/U1/Z_3 ), .op(_r384/n3 ) );
  inv _r384/U2  ( .ip(_U3/U1/Z_2 ), .op(_r384/n2 ) );
  inv _r384/U1  ( .ip(_U3/U1/Z_0 ), .op(_r384/n1 ) );
  nor2 _add_79_aco/U46  ( .ip1(cont__0__), .ip2(_add_79_aco/n5 ), .op(_add_79_aco/n37 ) );
  nor2 _add_79_aco/U45  ( .ip1(n291), .ip2(_add_79_aco/n12 ), .op(_add_79_aco/n38 ) );
  or2 _add_79_aco/U44  ( .ip1(_add_79_aco/n37 ), .ip2(_add_79_aco/n38 ), .op(N158) );
  nor2 _add_79_aco/U43  ( .ip1(_add_79_aco/n5 ), .ip2(_add_79_aco/n12 ), .op(_add_79_aco/n36 ) );
  nor2 _add_79_aco/U42  ( .ip1(_add_79_aco/n36 ), .ip2(_add_79_aco/n6 ), .op(_add_79_aco/n34 ) );
  nor2 _add_79_aco/U41  ( .ip1(cont__1__), .ip2(_add_79_aco/n4 ), .op(_add_79_aco/n35 ) );
  or2 _add_79_aco/U40  ( .ip1(_add_79_aco/n34 ), .ip2(_add_79_aco/n35 ), .op(N159) );
  nor2 _add_79_aco/U39  ( .ip1(_add_79_aco/n4 ), .ip2(_add_79_aco/n6 ), .op(_add_79_aco/n33 ) );
  nor2 _add_79_aco/U38  ( .ip1(_add_79_aco/n33 ), .ip2(_add_79_aco/n7 ), .op(_add_79_aco/n31 ) );
  nor2 _add_79_aco/U37  ( .ip1(cont__2__), .ip2(_add_79_aco/n3 ), .op(_add_79_aco/n32 ) );
  or2 _add_79_aco/U36  ( .ip1(_add_79_aco/n31 ), .ip2(_add_79_aco/n32 ), .op(N160) );
  nor2 _add_79_aco/U35  ( .ip1(_add_79_aco/n3 ), .ip2(_add_79_aco/n7 ), .op(_add_79_aco/n30 ) );
  nor2 _add_79_aco/U34  ( .ip1(_add_79_aco/n30 ), .ip2(_add_79_aco/n8 ), .op(_add_79_aco/n28 ) );
  and2 _add_79_aco/U33  ( .ip1(_add_79_aco/n8 ), .ip2(_add_79_aco/n30 ), .op(_add_79_aco/n29 ) );
  or2 _add_79_aco/U32  ( .ip1(_add_79_aco/n28 ), .ip2(_add_79_aco/n29 ), .op(N161) );
  nor3 _add_79_aco/U31  ( .ip1(_add_79_aco/n8 ), .ip2(_add_79_aco/n7 ), .ip3(_add_79_aco/n3 ), .op(_add_79_aco/n27 ) );
  nor2 _add_79_aco/U30  ( .ip1(_add_79_aco/n27 ), .ip2(_add_79_aco/n9 ), .op(_add_79_aco/n25 ) );
  nor2 _add_79_aco/U29  ( .ip1(cont__4__), .ip2(_add_79_aco/n2 ), .op(_add_79_aco/n26 ) );
  or2 _add_79_aco/U28  ( .ip1(_add_79_aco/n25 ), .ip2(_add_79_aco/n26 ), .op(N162) );
  nor2 _add_79_aco/U27  ( .ip1(_add_79_aco/n2 ), .ip2(_add_79_aco/n9 ), .op(_add_79_aco/n24 ) );
  nor2 _add_79_aco/U26  ( .ip1(_add_79_aco/n24 ), .ip2(_add_79_aco/n10 ), .op(_add_79_aco/n22 ) );
  nor2 _add_79_aco/U25  ( .ip1(cont__5__), .ip2(_add_79_aco/n1 ), .op(_add_79_aco/n23 ) );
  or2 _add_79_aco/U24  ( .ip1(_add_79_aco/n22 ), .ip2(_add_79_aco/n23 ), .op(N163) );
  nor2 _add_79_aco/U23  ( .ip1(_add_79_aco/n1 ), .ip2(_add_79_aco/n10 ), .op(_add_79_aco/n21 ) );
  nor2 _add_79_aco/U22  ( .ip1(_add_79_aco/n21 ), .ip2(_add_79_aco/n11 ), .op(_add_79_aco/n19 ) );
  and2 _add_79_aco/U21  ( .ip1(_add_79_aco/n11 ), .ip2(_add_79_aco/n21 ), .op(_add_79_aco/n20 ) );
  or2 _add_79_aco/U20  ( .ip1(_add_79_aco/n19 ), .ip2(_add_79_aco/n20 ), .op(N164) );
  nor2 _add_79_aco/U19  ( .ip1(_add_79_aco/n4 ), .ip2(_add_79_aco/n10 ), .op(_add_79_aco/n16 ) );
  nor2 _add_79_aco/U18  ( .ip1(_add_79_aco/n6 ), .ip2(_add_79_aco/n9 ), .op(_add_79_aco/n17 ) );
  nor3 _add_79_aco/U17  ( .ip1(_add_79_aco/n8 ), .ip2(_add_79_aco/n11 ), .ip3(_add_79_aco/n7 ), .op(_add_79_aco/n18 ) );
  nand3 _add_79_aco/U16  ( .ip1(_add_79_aco/n16 ), .ip2(_add_79_aco/n17 ), .ip3(_add_79_aco/n18 ), .op(_add_79_aco/n15 ) );
  and2 _add_79_aco/U15  ( .ip1(_add_79_aco/n15 ), .ip2(cont__7__), .op(_add_79_aco/n13 ) );
  nor2 _add_79_aco/U14  ( .ip1(cont__7__), .ip2(_add_79_aco/n15 ), .op(_add_79_aco/n14 ) );
  or2 _add_79_aco/U13  ( .ip1(_add_79_aco/n13 ), .ip2(_add_79_aco/n14 ), .op(N165) );
  inv _add_79_aco/U12  ( .ip(cont__0__), .op(_add_79_aco/n12 ) );
  inv _add_79_aco/U11  ( .ip(cont__6__), .op(_add_79_aco/n11 ) );
  inv _add_79_aco/U10  ( .ip(cont__5__), .op(_add_79_aco/n10 ) );
  inv _add_79_aco/U9  ( .ip(cont__4__), .op(_add_79_aco/n9 ) );
  inv _add_79_aco/U8  ( .ip(cont__3__), .op(_add_79_aco/n8 ) );
  inv _add_79_aco/U7  ( .ip(cont__2__), .op(_add_79_aco/n7 ) );
  inv _add_79_aco/U6  ( .ip(cont__1__), .op(_add_79_aco/n6 ) );
  inv _add_79_aco/U5  ( .ip(n291), .op(_add_79_aco/n5 ) );
  inv _add_79_aco/U4  ( .ip(_add_79_aco/n36 ), .op(_add_79_aco/n4 ) );
  inv _add_79_aco/U3  ( .ip(_add_79_aco/n33 ), .op(_add_79_aco/n3 ) );
  inv _add_79_aco/U2  ( .ip(_add_79_aco/n27 ), .op(_add_79_aco/n2 ) );
  inv _add_79_aco/U1  ( .ip(_add_79_aco/n24 ), .op(_add_79_aco/n1 ) );
endmodule

