module ALU (clock,
    io_negative,
    io_zero,
    reset,
    io_a,
    io_b,
    io_op,
    io_result);
 input clock;
 output io_negative;
 output io_zero;
 input reset;
 input [31:0] io_a;
 input [31:0] io_b;
 input [3:0] io_op;
 output [31:0] io_result;

 wire net_4;
 wire net_3;
 wire net_2;
 wire net_1;
 wire \_T_8[0] ;
 wire \_T_8[1] ;
 wire \_T_8[2] ;
 wire \_T_8[3] ;
 wire \_T_8[4] ;
 wire \_T_8[5] ;
 wire \_T_8[6] ;
 wire \_T_8[7] ;
 wire \_T_8[8] ;
 wire \_T_8[9] ;
 wire \_T_8[10] ;
 wire \_T_8[11] ;
 wire \_T_8[12] ;
 wire \_T_8[13] ;
 wire \_T_8[14] ;
 wire \_T_8[15] ;
 wire \_T_8[16] ;
 wire \_T_8[17] ;
 wire \_T_8[18] ;
 wire \_T_8[19] ;
 wire \_T_8[20] ;
 wire \_T_8[21] ;
 wire \_T_8[22] ;
 wire \_T_8[23] ;
 wire \_T_8[24] ;
 wire \_T_8[25] ;
 wire \_T_8[26] ;
 wire \_T_8[27] ;
 wire \_T_8[28] ;
 wire \_T_8[29] ;
 wire \_T_8[30] ;
 wire \_T_8[31] ;
 wire _002_;
 wire \_T_11[0] ;
 wire \_T_11[1] ;
 wire \_T_11[2] ;
 wire \_T_11[3] ;
 wire \_T_11[4] ;
 wire \_T_11[5] ;
 wire \_T_11[6] ;
 wire \_T_11[7] ;
 wire \_T_11[8] ;
 wire \_T_11[9] ;
 wire \_T_11[10] ;
 wire \_T_11[11] ;
 wire \_T_11[12] ;
 wire \_T_11[13] ;
 wire \_T_11[14] ;
 wire \_T_11[15] ;
 wire \_T_11[16] ;
 wire \_T_11[17] ;
 wire \_T_11[18] ;
 wire \_T_11[19] ;
 wire \_T_11[20] ;
 wire \_T_11[21] ;
 wire \_T_11[22] ;
 wire \_T_11[23] ;
 wire \_T_11[24] ;
 wire \_T_11[25] ;
 wire \_T_11[26] ;
 wire \_T_11[27] ;
 wire \_T_11[28] ;
 wire \_T_11[29] ;
 wire \_T_11[30] ;
 wire \_T_11[31] ;
 wire net37;
 wire net48;
 wire net59;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net60;
 wire net61;
 wire net5;
 wire net16;
 wire net27;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net28;
 wire net29;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire net73;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net130;
 wire net128;
 wire net129;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net126;
 wire net127;
 wire net120;
 wire net125;

 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_0 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_1 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_2 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_3 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_4 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_5 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_6 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_7 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_10 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_8 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_43 ();
 \ALU_32_0_32_0_32_unused_CO[30:0]_X_HAN_CARLSON  _265_ (.A({net29,
    net28,
    net26,
    net25,
    net24,
    net23,
    net22,
    net21,
    net20,
    net19,
    net18,
    net17,
    net15,
    net14,
    net13,
    net12,
    net11,
    net10,
    net9,
    net8,
    net7,
    net6,
    net36,
    net35,
    net34,
    net33,
    net32,
    net31,
    net30,
    net27,
    net16,
    net5}),
    .B({net61,
    net60,
    net58,
    net57,
    net56,
    net55,
    net54,
    net53,
    net52,
    net51,
    net50,
    net49,
    net47,
    net46,
    net45,
    net44,
    net43,
    net42,
    net41,
    net40,
    net39,
    net38,
    net68,
    net67,
    net66,
    net65,
    net64,
    net63,
    net62,
    net59,
    net48,
    net37}),
    .BI(net_3),
    .CI(net_4),
    .Y({\_T_11[31] ,
    \_T_11[30] ,
    \_T_11[29] ,
    \_T_11[28] ,
    \_T_11[27] ,
    \_T_11[26] ,
    \_T_11[25] ,
    \_T_11[24] ,
    \_T_11[23] ,
    \_T_11[22] ,
    \_T_11[21] ,
    \_T_11[20] ,
    \_T_11[19] ,
    \_T_11[18] ,
    \_T_11[17] ,
    \_T_11[16] ,
    \_T_11[15] ,
    \_T_11[14] ,
    \_T_11[13] ,
    \_T_11[12] ,
    \_T_11[11] ,
    \_T_11[10] ,
    \_T_11[9] ,
    \_T_11[8] ,
    \_T_11[7] ,
    \_T_11[6] ,
    \_T_11[5] ,
    \_T_11[4] ,
    \_T_11[3] ,
    \_T_11[2] ,
    \_T_11[1] ,
    \_T_11[0] }),
    .\CO[31] (_002_));
 sky130_fd_sc_hd__conb_1 _265__3 (.HI(net_3));
 sky130_fd_sc_hd__conb_1 _265__4 (.HI(net_4));
 sky130_fd_sc_hd__nor2_1 _269_ (.A(_261_),
    .B(_264_),
    .Y(_003_));
 sky130_fd_sc_hd__nor2_1 _270_ (.A(\_T_11[11] ),
    .B(net121),
    .Y(_004_));
 sky130_fd_sc_hd__o31ai_1 _271_ (.A1(net127),
    .A2(_003_),
    .A3(_004_),
    .B1(_258_),
    .Y(net76));
 sky130_fd_sc_hd__o21a_1 _272_ (.A1(net8),
    .A2(net40),
    .B1(net130),
    .X(_005_));
 sky130_fd_sc_hd__a31oi_1 _273_ (.A1(net8),
    .A2(net40),
    .A3(net129),
    .B1(_005_),
    .Y(_006_));
 sky130_fd_sc_hd__xor2_1 _274_ (.A(net8),
    .B(net40),
    .X(_007_));
 sky130_fd_sc_hd__a21oi_1 _275_ (.A1(net123),
    .A2(_007_),
    .B1(net125),
    .Y(_008_));
 sky130_fd_sc_hd__o22ai_1 _276_ (.A1(net128),
    .A2(_006_),
    .B1(_008_),
    .B2(net129),
    .Y(_009_));
 sky130_fd_sc_hd__nor2_1 _277_ (.A(\_T_11[12] ),
    .B(net121),
    .Y(_010_));
 sky130_fd_sc_hd__nor2_1 _278_ (.A(net127),
    .B(_010_),
    .Y(_011_));
 sky130_fd_sc_hd__a22o_1 _279_ (.A1(\_T_8[12] ),
    .A2(net126),
    .B1(_009_),
    .B2(_011_),
    .X(net77));
 sky130_fd_sc_hd__nand2_1 _280_ (.A(\_T_8[13] ),
    .B(net126),
    .Y(_012_));
 sky130_fd_sc_hd__o21ai_0 _281_ (.A1(net9),
    .A2(net41),
    .B1(net130),
    .Y(_013_));
 sky130_fd_sc_hd__nand3_1 _282_ (.A(net9),
    .B(net41),
    .C(net129),
    .Y(_014_));
 sky130_fd_sc_hd__a21oi_1 _283_ (.A1(_013_),
    .A2(_014_),
    .B1(net128),
    .Y(_015_));
 sky130_fd_sc_hd__xor2_1 _284_ (.A(net9),
    .B(net41),
    .X(_016_));
 sky130_fd_sc_hd__a211oi_1 _285_ (.A1(net120),
    .A2(_016_),
    .B1(_015_),
    .C1(net122),
    .Y(_017_));
 sky130_fd_sc_hd__nor2_1 _286_ (.A(\_T_11[13] ),
    .B(net121),
    .Y(_018_));
 sky130_fd_sc_hd__o31ai_1 _287_ (.A1(net127),
    .A2(_017_),
    .A3(_018_),
    .B1(_012_),
    .Y(net78));
 sky130_fd_sc_hd__nand2_1 _288_ (.A(\_T_8[14] ),
    .B(net126),
    .Y(_019_));
 sky130_fd_sc_hd__o21ai_0 _289_ (.A1(net10),
    .A2(net42),
    .B1(net130),
    .Y(_020_));
 sky130_fd_sc_hd__nand3_1 _290_ (.A(net10),
    .B(net42),
    .C(net129),
    .Y(_021_));
 sky130_fd_sc_hd__a21oi_1 _291_ (.A1(_020_),
    .A2(_021_),
    .B1(net128),
    .Y(_022_));
 sky130_fd_sc_hd__xor2_1 _292_ (.A(net10),
    .B(net42),
    .X(_023_));
 sky130_fd_sc_hd__a211oi_1 _293_ (.A1(net120),
    .A2(_023_),
    .B1(_022_),
    .C1(net122),
    .Y(_024_));
 sky130_fd_sc_hd__nor2_1 _294_ (.A(\_T_11[14] ),
    .B(net121),
    .Y(_025_));
 sky130_fd_sc_hd__o31ai_1 _295_ (.A1(net127),
    .A2(_024_),
    .A3(_025_),
    .B1(_019_),
    .Y(net79));
 sky130_fd_sc_hd__o21a_1 _296_ (.A1(net11),
    .A2(net43),
    .B1(net130),
    .X(_026_));
 sky130_fd_sc_hd__a31oi_1 _297_ (.A1(net11),
    .A2(net43),
    .A3(net129),
    .B1(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__xor2_1 _298_ (.A(net11),
    .B(net43),
    .X(_028_));
 sky130_fd_sc_hd__a21oi_1 _299_ (.A1(net123),
    .A2(_028_),
    .B1(net125),
    .Y(_029_));
 sky130_fd_sc_hd__o22ai_1 _300_ (.A1(net128),
    .A2(_027_),
    .B1(_029_),
    .B2(net129),
    .Y(_030_));
 sky130_fd_sc_hd__nor2_1 _301_ (.A(\_T_11[15] ),
    .B(net121),
    .Y(_031_));
 sky130_fd_sc_hd__nor2_1 _302_ (.A(net127),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__a22o_1 _303_ (.A1(\_T_8[15] ),
    .A2(net126),
    .B1(_030_),
    .B2(_032_),
    .X(net80));
 sky130_fd_sc_hd__nand2_1 _304_ (.A(\_T_8[16] ),
    .B(net126),
    .Y(_033_));
 sky130_fd_sc_hd__o21ai_0 _305_ (.A1(net12),
    .A2(net44),
    .B1(net130),
    .Y(_034_));
 sky130_fd_sc_hd__nand3_1 _306_ (.A(net12),
    .B(net44),
    .C(net129),
    .Y(_035_));
 sky130_fd_sc_hd__a21oi_1 _307_ (.A1(_034_),
    .A2(_035_),
    .B1(net128),
    .Y(_036_));
 sky130_fd_sc_hd__xor2_1 _308_ (.A(net12),
    .B(net44),
    .X(_037_));
 sky130_fd_sc_hd__a211oi_1 _309_ (.A1(net120),
    .A2(_037_),
    .B1(_036_),
    .C1(net122),
    .Y(_038_));
 sky130_fd_sc_hd__nor2_1 _310_ (.A(\_T_11[16] ),
    .B(net121),
    .Y(_039_));
 sky130_fd_sc_hd__o31ai_1 _311_ (.A1(net127),
    .A2(_038_),
    .A3(_039_),
    .B1(_033_),
    .Y(net81));
 sky130_fd_sc_hd__o21a_1 _312_ (.A1(net13),
    .A2(net45),
    .B1(net130),
    .X(_040_));
 sky130_fd_sc_hd__a31oi_1 _313_ (.A1(net13),
    .A2(net45),
    .A3(net129),
    .B1(_040_),
    .Y(_041_));
 sky130_fd_sc_hd__xor2_1 _314_ (.A(net13),
    .B(net45),
    .X(_042_));
 sky130_fd_sc_hd__a21oi_1 _315_ (.A1(net123),
    .A2(_042_),
    .B1(net125),
    .Y(_043_));
 sky130_fd_sc_hd__o22ai_1 _316_ (.A1(net128),
    .A2(_041_),
    .B1(_043_),
    .B2(net129),
    .Y(_044_));
 sky130_fd_sc_hd__nor2_1 _317_ (.A(\_T_11[17] ),
    .B(net121),
    .Y(_045_));
 sky130_fd_sc_hd__nor2_1 _318_ (.A(net127),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__a22o_1 _319_ (.A1(\_T_8[17] ),
    .A2(net126),
    .B1(_044_),
    .B2(_046_),
    .X(net82));
 sky130_fd_sc_hd__nand2_1 _320_ (.A(\_T_8[18] ),
    .B(net126),
    .Y(_047_));
 sky130_fd_sc_hd__o21ai_0 _321_ (.A1(net14),
    .A2(net46),
    .B1(net130),
    .Y(_048_));
 sky130_fd_sc_hd__nand3_1 _322_ (.A(net14),
    .B(net46),
    .C(net129),
    .Y(_049_));
 sky130_fd_sc_hd__a21oi_1 _323_ (.A1(_048_),
    .A2(_049_),
    .B1(net128),
    .Y(_050_));
 sky130_fd_sc_hd__xor2_1 _324_ (.A(net14),
    .B(net46),
    .X(_051_));
 sky130_fd_sc_hd__a211oi_1 _325_ (.A1(_191_),
    .A2(_051_),
    .B1(_050_),
    .C1(_173_),
    .Y(_052_));
 sky130_fd_sc_hd__nor2_1 _326_ (.A(\_T_11[18] ),
    .B(net121),
    .Y(_053_));
 sky130_fd_sc_hd__o31ai_1 _327_ (.A1(net127),
    .A2(_052_),
    .A3(_053_),
    .B1(_047_),
    .Y(net83));
 sky130_fd_sc_hd__nand2_1 _328_ (.A(\_T_8[19] ),
    .B(net126),
    .Y(_054_));
 sky130_fd_sc_hd__o21ai_0 _329_ (.A1(net15),
    .A2(net47),
    .B1(net130),
    .Y(_055_));
 sky130_fd_sc_hd__nand3_1 _330_ (.A(net15),
    .B(net47),
    .C(net129),
    .Y(_056_));
 sky130_fd_sc_hd__a21oi_1 _331_ (.A1(_055_),
    .A2(_056_),
    .B1(net128),
    .Y(_057_));
 sky130_fd_sc_hd__xor2_1 _332_ (.A(net15),
    .B(net47),
    .X(_058_));
 sky130_fd_sc_hd__a21oi_1 _333_ (.A1(net123),
    .A2(_058_),
    .B1(net124),
    .Y(_059_));
 sky130_fd_sc_hd__nor2_1 _334_ (.A(net129),
    .B(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__nor2_1 _335_ (.A(_057_),
    .B(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__nor2_1 _336_ (.A(\_T_11[19] ),
    .B(net121),
    .Y(_062_));
 sky130_fd_sc_hd__o31ai_1 _337_ (.A1(net127),
    .A2(_061_),
    .A3(_062_),
    .B1(_054_),
    .Y(net84));
 sky130_fd_sc_hd__nand2_1 _338_ (.A(\_T_8[20] ),
    .B(net126),
    .Y(_063_));
 sky130_fd_sc_hd__o21ai_0 _339_ (.A1(net17),
    .A2(net49),
    .B1(net130),
    .Y(_064_));
 sky130_fd_sc_hd__nand3_1 _340_ (.A(net17),
    .B(net49),
    .C(net129),
    .Y(_065_));
 sky130_fd_sc_hd__a21oi_1 _341_ (.A1(_064_),
    .A2(_065_),
    .B1(net128),
    .Y(_066_));
 sky130_fd_sc_hd__xor2_1 _342_ (.A(net17),
    .B(net49),
    .X(_067_));
 sky130_fd_sc_hd__a211oi_1 _343_ (.A1(_191_),
    .A2(_067_),
    .B1(_066_),
    .C1(_173_),
    .Y(_068_));
 sky130_fd_sc_hd__nor2_1 _344_ (.A(\_T_11[20] ),
    .B(net121),
    .Y(_069_));
 sky130_fd_sc_hd__o31ai_1 _345_ (.A1(net127),
    .A2(_068_),
    .A3(_069_),
    .B1(_063_),
    .Y(net86));
 sky130_fd_sc_hd__nand2_1 _346_ (.A(\_T_8[21] ),
    .B(net126),
    .Y(_070_));
 sky130_fd_sc_hd__o21ai_0 _347_ (.A1(net18),
    .A2(net50),
    .B1(net130),
    .Y(_071_));
 sky130_fd_sc_hd__nand3_1 _348_ (.A(net18),
    .B(net50),
    .C(net129),
    .Y(_072_));
 sky130_fd_sc_hd__a21oi_1 _349_ (.A1(_071_),
    .A2(_072_),
    .B1(net128),
    .Y(_073_));
 sky130_fd_sc_hd__xor2_1 _350_ (.A(net18),
    .B(net50),
    .X(_074_));
 sky130_fd_sc_hd__a21oi_1 _351_ (.A1(net123),
    .A2(_074_),
    .B1(net124),
    .Y(_075_));
 sky130_fd_sc_hd__nor2_1 _352_ (.A(net129),
    .B(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__nor2_1 _353_ (.A(_073_),
    .B(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__nor2_1 _354_ (.A(\_T_11[21] ),
    .B(net121),
    .Y(_078_));
 sky130_fd_sc_hd__o31ai_1 _355_ (.A1(net127),
    .A2(_077_),
    .A3(_078_),
    .B1(_070_),
    .Y(net87));
 sky130_fd_sc_hd__nand2_1 _356_ (.A(\_T_8[22] ),
    .B(net126),
    .Y(_079_));
 sky130_fd_sc_hd__o21ai_0 _357_ (.A1(net19),
    .A2(net51),
    .B1(net130),
    .Y(_080_));
 sky130_fd_sc_hd__nand3_1 _358_ (.A(net19),
    .B(net51),
    .C(net70),
    .Y(_081_));
 sky130_fd_sc_hd__a21oi_1 _359_ (.A1(_080_),
    .A2(_081_),
    .B1(net128),
    .Y(_082_));
 sky130_fd_sc_hd__xor2_1 _360_ (.A(net19),
    .B(net51),
    .X(_083_));
 sky130_fd_sc_hd__a211oi_1 _361_ (.A1(net120),
    .A2(_083_),
    .B1(_082_),
    .C1(net122),
    .Y(_084_));
 sky130_fd_sc_hd__nor2_1 _362_ (.A(\_T_11[22] ),
    .B(net121),
    .Y(_085_));
 sky130_fd_sc_hd__o31ai_1 _363_ (.A1(net127),
    .A2(_084_),
    .A3(_085_),
    .B1(_079_),
    .Y(net88));
 sky130_fd_sc_hd__nand2_1 _364_ (.A(\_T_8[23] ),
    .B(net126),
    .Y(_086_));
 sky130_fd_sc_hd__xor2_1 _365_ (.A(net20),
    .B(net52),
    .X(_087_));
 sky130_fd_sc_hd__a21oi_1 _366_ (.A1(net123),
    .A2(_087_),
    .B1(net124),
    .Y(_088_));
 sky130_fd_sc_hd__nor2_1 _367_ (.A(net70),
    .B(_088_),
    .Y(_089_));
 sky130_fd_sc_hd__o21ai_0 _368_ (.A1(net20),
    .A2(net52),
    .B1(net130),
    .Y(_090_));
 sky130_fd_sc_hd__nand3_1 _369_ (.A(net20),
    .B(net52),
    .C(net70),
    .Y(_091_));
 sky130_fd_sc_hd__a21oi_1 _370_ (.A1(_090_),
    .A2(_091_),
    .B1(net128),
    .Y(_092_));
 sky130_fd_sc_hd__nor2_1 _371_ (.A(_089_),
    .B(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__nor2_1 _372_ (.A(\_T_11[23] ),
    .B(net121),
    .Y(_094_));
 sky130_fd_sc_hd__o31ai_1 _373_ (.A1(net127),
    .A2(_093_),
    .A3(_094_),
    .B1(_086_),
    .Y(net89));
 sky130_fd_sc_hd__nand2_1 _374_ (.A(\_T_8[24] ),
    .B(net126),
    .Y(_095_));
 sky130_fd_sc_hd__xor2_1 _375_ (.A(net21),
    .B(net53),
    .X(_096_));
 sky130_fd_sc_hd__o21ai_0 _376_ (.A1(net21),
    .A2(net53),
    .B1(net130),
    .Y(_097_));
 sky130_fd_sc_hd__nand3_1 _377_ (.A(net21),
    .B(net53),
    .C(net70),
    .Y(_098_));
 sky130_fd_sc_hd__a21oi_1 _378_ (.A1(_097_),
    .A2(_098_),
    .B1(net128),
    .Y(_099_));
 sky130_fd_sc_hd__a211oi_1 _379_ (.A1(net120),
    .A2(_096_),
    .B1(_099_),
    .C1(net122),
    .Y(_100_));
 sky130_fd_sc_hd__nor2_1 _380_ (.A(\_T_11[24] ),
    .B(net121),
    .Y(_101_));
 sky130_fd_sc_hd__o31ai_1 _381_ (.A1(net127),
    .A2(_100_),
    .A3(_101_),
    .B1(_095_),
    .Y(net90));
 sky130_fd_sc_hd__nand2_1 _382_ (.A(\_T_8[25] ),
    .B(net126),
    .Y(_102_));
 sky130_fd_sc_hd__o21ai_0 _383_ (.A1(net22),
    .A2(net54),
    .B1(net130),
    .Y(_103_));
 sky130_fd_sc_hd__nand3_1 _384_ (.A(net22),
    .B(net54),
    .C(net70),
    .Y(_104_));
 sky130_fd_sc_hd__a21oi_1 _385_ (.A1(_103_),
    .A2(_104_),
    .B1(net128),
    .Y(_105_));
 sky130_fd_sc_hd__xor2_1 _386_ (.A(net22),
    .B(net54),
    .X(_106_));
 sky130_fd_sc_hd__a21oi_1 _387_ (.A1(net123),
    .A2(_106_),
    .B1(net124),
    .Y(_107_));
 sky130_fd_sc_hd__nor2_1 _388_ (.A(net70),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__nor2_1 _389_ (.A(_105_),
    .B(_108_),
    .Y(_109_));
 sky130_fd_sc_hd__nor2_1 _390_ (.A(\_T_11[25] ),
    .B(net121),
    .Y(_110_));
 sky130_fd_sc_hd__o31ai_1 _391_ (.A1(net127),
    .A2(_109_),
    .A3(_110_),
    .B1(_102_),
    .Y(net91));
 sky130_fd_sc_hd__nand2_1 _392_ (.A(\_T_8[26] ),
    .B(net126),
    .Y(_111_));
 sky130_fd_sc_hd__xor2_1 _393_ (.A(net23),
    .B(net55),
    .X(_112_));
 sky130_fd_sc_hd__o21ai_0 _394_ (.A1(net23),
    .A2(net55),
    .B1(net130),
    .Y(_113_));
 sky130_fd_sc_hd__nand3_1 _395_ (.A(net23),
    .B(net55),
    .C(net70),
    .Y(_114_));
 sky130_fd_sc_hd__a21oi_1 _396_ (.A1(_113_),
    .A2(_114_),
    .B1(net128),
    .Y(_115_));
 sky130_fd_sc_hd__a211oi_1 _397_ (.A1(net120),
    .A2(_112_),
    .B1(_115_),
    .C1(net122),
    .Y(_116_));
 sky130_fd_sc_hd__nor2_1 _398_ (.A(\_T_11[26] ),
    .B(net121),
    .Y(_117_));
 sky130_fd_sc_hd__o31ai_1 _399_ (.A1(net127),
    .A2(_116_),
    .A3(_117_),
    .B1(_111_),
    .Y(net92));
 sky130_fd_sc_hd__nand2_1 _400_ (.A(\_T_8[27] ),
    .B(net126),
    .Y(_118_));
 sky130_fd_sc_hd__o21ai_0 _401_ (.A1(net24),
    .A2(net56),
    .B1(net130),
    .Y(_119_));
 sky130_fd_sc_hd__nand3_1 _402_ (.A(net24),
    .B(net56),
    .C(net70),
    .Y(_120_));
 sky130_fd_sc_hd__a21oi_1 _403_ (.A1(_119_),
    .A2(_120_),
    .B1(net128),
    .Y(_121_));
 sky130_fd_sc_hd__xor2_1 _404_ (.A(net24),
    .B(net56),
    .X(_122_));
 sky130_fd_sc_hd__a21oi_1 _405_ (.A1(net123),
    .A2(_122_),
    .B1(net124),
    .Y(_123_));
 sky130_fd_sc_hd__nor2_1 _406_ (.A(net70),
    .B(_123_),
    .Y(_124_));
 sky130_fd_sc_hd__nor2_1 _407_ (.A(_121_),
    .B(_124_),
    .Y(_125_));
 sky130_fd_sc_hd__nor2_1 _408_ (.A(\_T_11[27] ),
    .B(net121),
    .Y(_126_));
 sky130_fd_sc_hd__o31ai_1 _409_ (.A1(net127),
    .A2(_125_),
    .A3(_126_),
    .B1(_118_),
    .Y(net93));
 sky130_fd_sc_hd__nand2_1 _410_ (.A(\_T_8[28] ),
    .B(net126),
    .Y(_127_));
 sky130_fd_sc_hd__o21ai_0 _411_ (.A1(net25),
    .A2(net57),
    .B1(net130),
    .Y(_128_));
 sky130_fd_sc_hd__nand3_1 _412_ (.A(net25),
    .B(net57),
    .C(net70),
    .Y(_129_));
 sky130_fd_sc_hd__a21oi_1 _413_ (.A1(_128_),
    .A2(_129_),
    .B1(net128),
    .Y(_130_));
 sky130_fd_sc_hd__xor2_1 _414_ (.A(net25),
    .B(net57),
    .X(_131_));
 sky130_fd_sc_hd__a211oi_1 _415_ (.A1(net120),
    .A2(_131_),
    .B1(_130_),
    .C1(net122),
    .Y(_132_));
 sky130_fd_sc_hd__nor2_1 _416_ (.A(\_T_11[28] ),
    .B(net121),
    .Y(_133_));
 sky130_fd_sc_hd__o31ai_1 _417_ (.A1(net127),
    .A2(_132_),
    .A3(_133_),
    .B1(_127_),
    .Y(net94));
 sky130_fd_sc_hd__nand2_1 _418_ (.A(\_T_8[29] ),
    .B(net126),
    .Y(_134_));
 sky130_fd_sc_hd__o21ai_0 _419_ (.A1(net26),
    .A2(net58),
    .B1(net130),
    .Y(_135_));
 sky130_fd_sc_hd__nand3_1 _420_ (.A(net26),
    .B(net58),
    .C(net70),
    .Y(_136_));
 sky130_fd_sc_hd__a21oi_1 _421_ (.A1(_135_),
    .A2(_136_),
    .B1(net128),
    .Y(_137_));
 sky130_fd_sc_hd__xor2_1 _422_ (.A(net26),
    .B(net58),
    .X(_138_));
 sky130_fd_sc_hd__a21oi_1 _423_ (.A1(net123),
    .A2(_138_),
    .B1(net124),
    .Y(_139_));
 sky130_fd_sc_hd__nor2_1 _424_ (.A(net70),
    .B(_139_),
    .Y(_140_));
 sky130_fd_sc_hd__nor2_1 _425_ (.A(_137_),
    .B(_140_),
    .Y(_141_));
 sky130_fd_sc_hd__nor2_1 _426_ (.A(\_T_11[29] ),
    .B(net121),
    .Y(_142_));
 sky130_fd_sc_hd__o31ai_1 _427_ (.A1(net127),
    .A2(_141_),
    .A3(_142_),
    .B1(_134_),
    .Y(net95));
 sky130_fd_sc_hd__nand2_1 _428_ (.A(\_T_8[30] ),
    .B(net126),
    .Y(_143_));
 sky130_fd_sc_hd__o21ai_0 _429_ (.A1(net28),
    .A2(net60),
    .B1(net130),
    .Y(_144_));
 sky130_fd_sc_hd__nand3_1 _430_ (.A(net28),
    .B(net60),
    .C(net70),
    .Y(_145_));
 sky130_fd_sc_hd__a21oi_1 _431_ (.A1(_144_),
    .A2(_145_),
    .B1(net128),
    .Y(_146_));
 sky130_fd_sc_hd__xor2_1 _432_ (.A(net28),
    .B(net60),
    .X(_147_));
 sky130_fd_sc_hd__a211oi_1 _433_ (.A1(net120),
    .A2(_147_),
    .B1(_146_),
    .C1(net122),
    .Y(_148_));
 sky130_fd_sc_hd__nor2_1 _434_ (.A(\_T_11[30] ),
    .B(net121),
    .Y(_149_));
 sky130_fd_sc_hd__o31ai_1 _435_ (.A1(net127),
    .A2(_148_),
    .A3(_149_),
    .B1(_143_),
    .Y(net97));
 sky130_fd_sc_hd__nor3_1 _436_ (.A(net89),
    .B(net90),
    .C(net92),
    .Y(_150_));
 sky130_fd_sc_hd__nor4_1 _437_ (.A(net93),
    .B(net94),
    .C(net95),
    .D(net97),
    .Y(_151_));
 sky130_fd_sc_hd__nand2_1 _438_ (.A(_150_),
    .B(_151_),
    .Y(_152_));
 sky130_fd_sc_hd__nor4_1 _439_ (.A(net101),
    .B(net103),
    .C(net84),
    .D(net91),
    .Y(_153_));
 sky130_fd_sc_hd__nor4_1 _440_ (.A(net104),
    .B(net76),
    .C(net80),
    .D(net88),
    .Y(_154_));
 sky130_fd_sc_hd__nor4_1 _441_ (.A(net98),
    .B(net99),
    .C(net100),
    .D(net102),
    .Y(_155_));
 sky130_fd_sc_hd__nor4_1 _442_ (.A(net73),
    .B(net85),
    .C(net96),
    .D(net87),
    .Y(_156_));
 sky130_fd_sc_hd__nand4_1 _443_ (.A(_153_),
    .B(_154_),
    .C(_155_),
    .D(_156_),
    .Y(_157_));
 sky130_fd_sc_hd__or2_0 _444_ (.A(net75),
    .B(net83),
    .X(_158_));
 sky130_fd_sc_hd__or4_1 _445_ (.A(net77),
    .B(net78),
    .C(net79),
    .D(net86),
    .X(_159_));
 sky130_fd_sc_hd__or4_1 _446_ (.A(net81),
    .B(net82),
    .C(_158_),
    .D(_159_),
    .X(_160_));
 sky130_fd_sc_hd__nor4_1 _447_ (.A(net74),
    .B(_152_),
    .C(_157_),
    .D(_160_),
    .Y(net105));
 sky130_fd_sc_hd__nor3_1 _448_ (.A(net130),
    .B(net129),
    .C(net128),
    .Y(_161_));
 sky130_fd_sc_hd__nor4_2 _449_ (.A(net130),
    .B(net70),
    .C(net128),
    .D(net127),
    .Y(_162_));
 sky130_fd_sc_hd__nand2_1 _450_ (.A(\_T_8[31] ),
    .B(_162_),
    .Y(_163_));
 sky130_fd_sc_hd__o21ai_0 _451_ (.A1(net29),
    .A2(net61),
    .B1(net130),
    .Y(_164_));
 sky130_fd_sc_hd__nand3_1 _452_ (.A(net29),
    .B(net61),
    .C(net70),
    .Y(_165_));
 sky130_fd_sc_hd__a21oi_1 _453_ (.A1(_164_),
    .A2(_165_),
    .B1(net128),
    .Y(_166_));
 sky130_fd_sc_hd__nor2b_1 _454_ (.A(net128),
    .B_N(net130),
    .Y(_167_));
 sky130_fd_sc_hd__nor2b_1 _455_ (.A(net130),
    .B_N(net128),
    .Y(_168_));
 sky130_fd_sc_hd__xor2_1 _456_ (.A(net29),
    .B(net61),
    .X(_169_));
 sky130_fd_sc_hd__a21oi_1 _457_ (.A1(net123),
    .A2(_169_),
    .B1(net124),
    .Y(_170_));
 sky130_fd_sc_hd__nor2_1 _458_ (.A(net70),
    .B(_170_),
    .Y(_171_));
 sky130_fd_sc_hd__nor2_1 _459_ (.A(_166_),
    .B(_171_),
    .Y(_172_));
 sky130_fd_sc_hd__nor2b_1 _460_ (.A(net70),
    .B_N(net124),
    .Y(_173_));
 sky130_fd_sc_hd__nand2b_1 _461_ (.A_N(net70),
    .B(net125),
    .Y(_174_));
 sky130_fd_sc_hd__nor2_1 _462_ (.A(\_T_11[31] ),
    .B(net121),
    .Y(_175_));
 sky130_fd_sc_hd__o31ai_1 _463_ (.A1(net127),
    .A2(_172_),
    .A3(_175_),
    .B1(_163_),
    .Y(net73));
 sky130_fd_sc_hd__nand2_1 _464_ (.A(\_T_8[0] ),
    .B(_161_),
    .Y(_176_));
 sky130_fd_sc_hd__a211o_1 _465_ (.A1(net130),
    .A2(\_T_11[0] ),
    .B1(net128),
    .C1(net129),
    .X(_177_));
 sky130_fd_sc_hd__maj3_1 _466_ (.A(_213_),
    .B(net61),
    .C(_002_),
    .X(_178_));
 sky130_fd_sc_hd__nor4bb_1 _467_ (.A(net129),
    .B(_178_),
    .C_N(net128),
    .D_N(net130),
    .Y(_179_));
 sky130_fd_sc_hd__xor2_1 _468_ (.A(net5),
    .B(net37),
    .X(_180_));
 sky130_fd_sc_hd__a21oi_1 _469_ (.A1(net123),
    .A2(_180_),
    .B1(net124),
    .Y(_181_));
 sky130_fd_sc_hd__a21o_1 _470_ (.A1(net37),
    .A2(net129),
    .B1(net130),
    .X(_182_));
 sky130_fd_sc_hd__a22oi_1 _471_ (.A1(net37),
    .A2(net130),
    .B1(_182_),
    .B2(net5),
    .Y(_183_));
 sky130_fd_sc_hd__o22ai_1 _472_ (.A1(net129),
    .A2(_181_),
    .B1(_183_),
    .B2(net128),
    .Y(_184_));
 sky130_fd_sc_hd__o21ai_0 _473_ (.A1(_179_),
    .A2(_184_),
    .B1(_177_),
    .Y(_185_));
 sky130_fd_sc_hd__a21oi_1 _474_ (.A1(_176_),
    .A2(_185_),
    .B1(net127),
    .Y(net74));
 sky130_fd_sc_hd__nand2_1 _475_ (.A(\_T_8[1] ),
    .B(net126),
    .Y(_186_));
 sky130_fd_sc_hd__o21ai_0 _476_ (.A1(net16),
    .A2(net48),
    .B1(net130),
    .Y(_187_));
 sky130_fd_sc_hd__nand3_1 _477_ (.A(net16),
    .B(net48),
    .C(net129),
    .Y(_188_));
 sky130_fd_sc_hd__a21oi_1 _478_ (.A1(_187_),
    .A2(_188_),
    .B1(net128),
    .Y(_189_));
 sky130_fd_sc_hd__xor2_1 _479_ (.A(net16),
    .B(net48),
    .X(_190_));
 sky130_fd_sc_hd__nor2b_1 _480_ (.A(net70),
    .B_N(net123),
    .Y(_191_));
 sky130_fd_sc_hd__a211oi_1 _481_ (.A1(_190_),
    .A2(_191_),
    .B1(_173_),
    .C1(_189_),
    .Y(_192_));
 sky130_fd_sc_hd__nor2_1 _482_ (.A(\_T_11[1] ),
    .B(net121),
    .Y(_193_));
 sky130_fd_sc_hd__o31ai_1 _483_ (.A1(net127),
    .A2(_192_),
    .A3(_193_),
    .B1(_186_),
    .Y(net85));
 sky130_fd_sc_hd__nand2_1 _484_ (.A(\_T_8[2] ),
    .B(net126),
    .Y(_194_));
 sky130_fd_sc_hd__o21ai_0 _485_ (.A1(net27),
    .A2(net59),
    .B1(net130),
    .Y(_195_));
 sky130_fd_sc_hd__nand3_1 _486_ (.A(net27),
    .B(net59),
    .C(net129),
    .Y(_196_));
 sky130_fd_sc_hd__a21oi_1 _487_ (.A1(_195_),
    .A2(_196_),
    .B1(net128),
    .Y(_197_));
 sky130_fd_sc_hd__xor2_1 _488_ (.A(net27),
    .B(net59),
    .X(_198_));
 sky130_fd_sc_hd__a211oi_1 _489_ (.A1(_191_),
    .A2(_198_),
    .B1(_197_),
    .C1(_173_),
    .Y(_199_));
 sky130_fd_sc_hd__nor2_1 _490_ (.A(\_T_11[2] ),
    .B(net121),
    .Y(_200_));
 sky130_fd_sc_hd__o31ai_1 _491_ (.A1(net127),
    .A2(_199_),
    .A3(_200_),
    .B1(_194_),
    .Y(net96));
 sky130_fd_sc_hd__nand2_1 _492_ (.A(\_T_8[3] ),
    .B(net126),
    .Y(_201_));
 sky130_fd_sc_hd__o21ai_0 _493_ (.A1(net30),
    .A2(net62),
    .B1(net130),
    .Y(_202_));
 sky130_fd_sc_hd__nand3_1 _494_ (.A(net30),
    .B(net62),
    .C(net129),
    .Y(_203_));
 sky130_fd_sc_hd__a21oi_1 _495_ (.A1(_202_),
    .A2(_203_),
    .B1(net128),
    .Y(_204_));
 sky130_fd_sc_hd__xor2_1 _496_ (.A(net30),
    .B(net62),
    .X(_205_));
 sky130_fd_sc_hd__a211oi_1 _497_ (.A1(_191_),
    .A2(_205_),
    .B1(_204_),
    .C1(_173_),
    .Y(_206_));
 sky130_fd_sc_hd__nor2_1 _498_ (.A(\_T_11[3] ),
    .B(net121),
    .Y(_207_));
 sky130_fd_sc_hd__o31ai_1 _499_ (.A1(net127),
    .A2(_206_),
    .A3(_207_),
    .B1(_201_),
    .Y(net98));
 sky130_fd_sc_hd__nand2_1 _500_ (.A(\_T_8[4] ),
    .B(net126),
    .Y(_208_));
 sky130_fd_sc_hd__o21ai_0 _501_ (.A1(net31),
    .A2(net63),
    .B1(net130),
    .Y(_209_));
 sky130_fd_sc_hd__nand3_1 _502_ (.A(net31),
    .B(net63),
    .C(net129),
    .Y(_210_));
 sky130_fd_sc_hd__a21oi_1 _503_ (.A1(_209_),
    .A2(_210_),
    .B1(net128),
    .Y(_211_));
 sky130_fd_sc_hd__xor2_1 _504_ (.A(net31),
    .B(net63),
    .X(_212_));
 sky130_fd_sc_hd__clkinv_1 _505_ (.A(net29),
    .Y(_213_));
 sky130_fd_sc_hd__a211oi_1 _506_ (.A1(_191_),
    .A2(_212_),
    .B1(_211_),
    .C1(_173_),
    .Y(_214_));
 sky130_fd_sc_hd__nor2_1 _507_ (.A(\_T_11[4] ),
    .B(net121),
    .Y(_215_));
 sky130_fd_sc_hd__o31ai_1 _508_ (.A1(net127),
    .A2(_214_),
    .A3(_215_),
    .B1(_208_),
    .Y(net99));
 sky130_fd_sc_hd__nand2_1 _509_ (.A(\_T_8[5] ),
    .B(net126),
    .Y(_216_));
 sky130_fd_sc_hd__o21ai_0 _510_ (.A1(net32),
    .A2(net64),
    .B1(net130),
    .Y(_217_));
 sky130_fd_sc_hd__nand3_1 _511_ (.A(net32),
    .B(net64),
    .C(net129),
    .Y(_218_));
 sky130_fd_sc_hd__a21oi_1 _512_ (.A1(_217_),
    .A2(_218_),
    .B1(net128),
    .Y(_219_));
 sky130_fd_sc_hd__xor2_1 _513_ (.A(net32),
    .B(net64),
    .X(_220_));
 sky130_fd_sc_hd__a211oi_1 _514_ (.A1(_191_),
    .A2(_220_),
    .B1(_219_),
    .C1(_173_),
    .Y(_221_));
 sky130_fd_sc_hd__nor2_1 _515_ (.A(\_T_11[5] ),
    .B(net121),
    .Y(_222_));
 sky130_fd_sc_hd__o31ai_1 _516_ (.A1(net127),
    .A2(_221_),
    .A3(_222_),
    .B1(_216_),
    .Y(net100));
 sky130_fd_sc_hd__o21a_1 _517_ (.A1(net33),
    .A2(net65),
    .B1(net130),
    .X(_223_));
 sky130_fd_sc_hd__a31oi_1 _518_ (.A1(net33),
    .A2(net65),
    .A3(net129),
    .B1(_223_),
    .Y(_224_));
 sky130_fd_sc_hd__xor2_1 _519_ (.A(net33),
    .B(net65),
    .X(_225_));
 sky130_fd_sc_hd__a21oi_1 _520_ (.A1(net123),
    .A2(_225_),
    .B1(net125),
    .Y(_226_));
 sky130_fd_sc_hd__o22ai_1 _521_ (.A1(net128),
    .A2(_224_),
    .B1(_226_),
    .B2(net129),
    .Y(_227_));
 sky130_fd_sc_hd__nor2_1 _522_ (.A(\_T_11[6] ),
    .B(net121),
    .Y(_228_));
 sky130_fd_sc_hd__nor2_1 _523_ (.A(net127),
    .B(_228_),
    .Y(_229_));
 sky130_fd_sc_hd__a22o_1 _524_ (.A1(\_T_8[6] ),
    .A2(net126),
    .B1(_227_),
    .B2(_229_),
    .X(net101));
 sky130_fd_sc_hd__o21a_1 _525_ (.A1(net34),
    .A2(net66),
    .B1(net130),
    .X(_230_));
 sky130_fd_sc_hd__a31oi_1 _526_ (.A1(net34),
    .A2(net66),
    .A3(net129),
    .B1(_230_),
    .Y(_231_));
 sky130_fd_sc_hd__xor2_1 _527_ (.A(net34),
    .B(net66),
    .X(_232_));
 sky130_fd_sc_hd__a21oi_1 _528_ (.A1(net123),
    .A2(_232_),
    .B1(net125),
    .Y(_233_));
 sky130_fd_sc_hd__o22ai_1 _529_ (.A1(net128),
    .A2(_231_),
    .B1(_233_),
    .B2(net129),
    .Y(_234_));
 sky130_fd_sc_hd__nor2_1 _530_ (.A(\_T_11[7] ),
    .B(net121),
    .Y(_235_));
 sky130_fd_sc_hd__nor2_1 _531_ (.A(net127),
    .B(_235_),
    .Y(_236_));
 sky130_fd_sc_hd__a22o_1 _532_ (.A1(\_T_8[7] ),
    .A2(net126),
    .B1(_234_),
    .B2(_236_),
    .X(net102));
 sky130_fd_sc_hd__o21a_1 _533_ (.A1(net35),
    .A2(net67),
    .B1(net130),
    .X(_237_));
 sky130_fd_sc_hd__a31oi_1 _534_ (.A1(net35),
    .A2(net67),
    .A3(net129),
    .B1(_237_),
    .Y(_238_));
 sky130_fd_sc_hd__xor2_1 _535_ (.A(net35),
    .B(net67),
    .X(_239_));
 sky130_fd_sc_hd__a21oi_1 _536_ (.A1(net123),
    .A2(_239_),
    .B1(net125),
    .Y(_240_));
 sky130_fd_sc_hd__o22ai_1 _537_ (.A1(net128),
    .A2(_238_),
    .B1(_240_),
    .B2(net129),
    .Y(_241_));
 sky130_fd_sc_hd__nor2_1 _538_ (.A(\_T_11[8] ),
    .B(net121),
    .Y(_242_));
 sky130_fd_sc_hd__nor2_1 _539_ (.A(net127),
    .B(_242_),
    .Y(_243_));
 sky130_fd_sc_hd__a22o_1 _540_ (.A1(\_T_8[8] ),
    .A2(net126),
    .B1(_241_),
    .B2(_243_),
    .X(net103));
 sky130_fd_sc_hd__o21a_1 _541_ (.A1(net36),
    .A2(net68),
    .B1(net130),
    .X(_244_));
 sky130_fd_sc_hd__a31oi_1 _542_ (.A1(net36),
    .A2(net68),
    .A3(net129),
    .B1(_244_),
    .Y(_245_));
 sky130_fd_sc_hd__xor2_1 _543_ (.A(net36),
    .B(net68),
    .X(_246_));
 sky130_fd_sc_hd__a21oi_1 _544_ (.A1(net123),
    .A2(_246_),
    .B1(net125),
    .Y(_247_));
 sky130_fd_sc_hd__o22ai_1 _545_ (.A1(net128),
    .A2(_245_),
    .B1(_247_),
    .B2(net129),
    .Y(_248_));
 sky130_fd_sc_hd__nor2_1 _546_ (.A(\_T_11[9] ),
    .B(net121),
    .Y(_249_));
 sky130_fd_sc_hd__nor2_1 _547_ (.A(net127),
    .B(_249_),
    .Y(_250_));
 sky130_fd_sc_hd__a22o_1 _548_ (.A1(\_T_8[9] ),
    .A2(net126),
    .B1(_248_),
    .B2(_250_),
    .X(net104));
 sky130_fd_sc_hd__nand2_1 _549_ (.A(\_T_8[10] ),
    .B(net126),
    .Y(_251_));
 sky130_fd_sc_hd__o21ai_0 _550_ (.A1(net6),
    .A2(net38),
    .B1(net130),
    .Y(_252_));
 sky130_fd_sc_hd__nand3_1 _551_ (.A(net6),
    .B(net38),
    .C(net129),
    .Y(_253_));
 sky130_fd_sc_hd__a21oi_1 _552_ (.A1(_252_),
    .A2(_253_),
    .B1(net128),
    .Y(_254_));
 sky130_fd_sc_hd__xor2_1 _553_ (.A(net6),
    .B(net38),
    .X(_255_));
 sky130_fd_sc_hd__a211oi_1 _554_ (.A1(net120),
    .A2(_255_),
    .B1(_254_),
    .C1(net122),
    .Y(_256_));
 sky130_fd_sc_hd__nor2_1 _555_ (.A(\_T_11[10] ),
    .B(net121),
    .Y(_257_));
 sky130_fd_sc_hd__o31ai_1 _556_ (.A1(net127),
    .A2(_256_),
    .A3(_257_),
    .B1(_251_),
    .Y(net75));
 sky130_fd_sc_hd__nand2_1 _557_ (.A(\_T_8[11] ),
    .B(net126),
    .Y(_258_));
 sky130_fd_sc_hd__o21ai_0 _558_ (.A1(net7),
    .A2(net39),
    .B1(net130),
    .Y(_259_));
 sky130_fd_sc_hd__nand3_1 _559_ (.A(net7),
    .B(net39),
    .C(net129),
    .Y(_260_));
 sky130_fd_sc_hd__a21oi_1 _560_ (.A1(_259_),
    .A2(_260_),
    .B1(net128),
    .Y(_261_));
 sky130_fd_sc_hd__xor2_1 _561_ (.A(net7),
    .B(net39),
    .X(_262_));
 sky130_fd_sc_hd__a21oi_1 _562_ (.A1(net123),
    .A2(_262_),
    .B1(net125),
    .Y(_263_));
 sky130_fd_sc_hd__nor2_1 _563_ (.A(net129),
    .B(_263_),
    .Y(_264_));
 ALU_32_0_32_0_32_unused_CO_X_HAN_CARLSON \_T_8\ALU_32_0_32_0_32_unused_CO_X_HAN_CARLSON  (.A({net29,
    net28,
    net26,
    net25,
    net24,
    net23,
    net22,
    net21,
    net20,
    net19,
    net18,
    net17,
    net15,
    net14,
    net13,
    net12,
    net11,
    net10,
    net9,
    net8,
    net7,
    net6,
    net36,
    net35,
    net34,
    net33,
    net32,
    net31,
    net30,
    net27,
    net16,
    net5}),
    .B({net61,
    net60,
    net58,
    net57,
    net56,
    net55,
    net54,
    net53,
    net52,
    net51,
    net50,
    net49,
    net47,
    net46,
    net45,
    net44,
    net43,
    net42,
    net41,
    net40,
    net39,
    net38,
    net68,
    net67,
    net66,
    net65,
    net64,
    net63,
    net62,
    net59,
    net48,
    net37}),
    .BI(net_1),
    .CI(net_2),
    .Y({\_T_8[31] ,
    \_T_8[30] ,
    \_T_8[29] ,
    \_T_8[28] ,
    \_T_8[27] ,
    \_T_8[26] ,
    \_T_8[25] ,
    \_T_8[24] ,
    \_T_8[23] ,
    \_T_8[22] ,
    \_T_8[21] ,
    \_T_8[20] ,
    \_T_8[19] ,
    \_T_8[18] ,
    \_T_8[17] ,
    \_T_8[16] ,
    \_T_8[15] ,
    \_T_8[14] ,
    \_T_8[13] ,
    \_T_8[12] ,
    \_T_8[11] ,
    \_T_8[10] ,
    \_T_8[9] ,
    \_T_8[8] ,
    \_T_8[7] ,
    \_T_8[6] ,
    \_T_8[5] ,
    \_T_8[4] ,
    \_T_8[3] ,
    \_T_8[2] ,
    \_T_8[1] ,
    \_T_8[0] }));
 sky130_fd_sc_hd__conb_1 \_T_8\ALU_32_0_32_0_32_unused_CO_X_HAN_CARLSON_1  (.LO(net_1));
 sky130_fd_sc_hd__conb_1 \_T_8\ALU_32_0_32_0_32_unused_CO_X_HAN_CARLSON_2  (.LO(net_2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(io_a[14]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input11 (.A(io_a[15]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input12 (.A(io_a[16]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input13 (.A(io_a[17]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input14 (.A(io_a[18]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input15 (.A(io_a[19]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input16 (.A(io_a[1]),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input17 (.A(io_a[20]),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input18 (.A(io_a[21]),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input19 (.A(io_a[22]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input20 (.A(io_a[23]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input21 (.A(io_a[24]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input22 (.A(io_a[25]),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input23 (.A(io_a[26]),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input24 (.A(io_a[27]),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input25 (.A(io_a[28]),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input26 (.A(io_a[29]),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input27 (.A(io_a[2]),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input28 (.A(io_a[30]),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input29 (.A(io_a[31]),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input30 (.A(io_a[3]),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input31 (.A(io_a[4]),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input32 (.A(io_a[5]),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input33 (.A(io_a[6]),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input34 (.A(io_a[7]),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input35 (.A(io_a[8]),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input36 (.A(io_a[9]),
    .X(net36));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input37 (.A(io_b[0]),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input38 (.A(io_b[10]),
    .X(net38));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input39 (.A(io_b[11]),
    .X(net39));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input40 (.A(io_b[12]),
    .X(net40));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input41 (.A(io_b[13]),
    .X(net41));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input42 (.A(io_b[14]),
    .X(net42));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input43 (.A(io_b[15]),
    .X(net43));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input44 (.A(io_b[16]),
    .X(net44));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input45 (.A(io_b[17]),
    .X(net45));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input46 (.A(io_b[18]),
    .X(net46));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input47 (.A(io_b[19]),
    .X(net47));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input48 (.A(io_b[1]),
    .X(net48));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input49 (.A(io_b[20]),
    .X(net49));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(io_a[0]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input50 (.A(io_b[21]),
    .X(net50));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input51 (.A(io_b[22]),
    .X(net51));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input52 (.A(io_b[23]),
    .X(net52));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input53 (.A(io_b[24]),
    .X(net53));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input54 (.A(io_b[25]),
    .X(net54));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input55 (.A(io_b[26]),
    .X(net55));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input56 (.A(io_b[27]),
    .X(net56));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input57 (.A(io_b[28]),
    .X(net57));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input58 (.A(io_b[29]),
    .X(net58));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input59 (.A(io_b[2]),
    .X(net59));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(io_a[10]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input60 (.A(io_b[30]),
    .X(net60));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input61 (.A(io_b[31]),
    .X(net61));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input62 (.A(io_b[3]),
    .X(net62));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input63 (.A(io_b[4]),
    .X(net63));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input64 (.A(io_b[5]),
    .X(net64));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input65 (.A(io_b[6]),
    .X(net65));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input66 (.A(io_b[7]),
    .X(net66));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input67 (.A(io_b[8]),
    .X(net67));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input68 (.A(io_b[9]),
    .X(net68));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input69 (.A(io_op[0]),
    .X(net69));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(io_a[11]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 input70 (.A(io_op[1]),
    .X(net70));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input71 (.A(io_op[2]),
    .X(net71));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input72 (.A(io_op[3]),
    .X(net72));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(io_a[12]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(io_a[13]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output100 (.A(net99),
    .X(io_result[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output101 (.A(net100),
    .X(io_result[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output102 (.A(net101),
    .X(io_result[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output103 (.A(net102),
    .X(io_result[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output104 (.A(net103),
    .X(io_result[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output105 (.A(net104),
    .X(io_result[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output106 (.A(net105),
    .X(io_zero));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output73 (.A(net73),
    .X(io_negative));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output74 (.A(net74),
    .X(io_result[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output75 (.A(net75),
    .X(io_result[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output76 (.A(net76),
    .X(io_result[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output77 (.A(net77),
    .X(io_result[12]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output78 (.A(net78),
    .X(io_result[13]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output79 (.A(net79),
    .X(io_result[14]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output80 (.A(net80),
    .X(io_result[15]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output81 (.A(net81),
    .X(io_result[16]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output82 (.A(net82),
    .X(io_result[17]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output83 (.A(net83),
    .X(io_result[18]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output84 (.A(net84),
    .X(io_result[19]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output85 (.A(net85),
    .X(io_result[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output86 (.A(net86),
    .X(io_result[20]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output87 (.A(net87),
    .X(io_result[21]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output88 (.A(net88),
    .X(io_result[22]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output89 (.A(net89),
    .X(io_result[23]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output90 (.A(net90),
    .X(io_result[24]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output91 (.A(net91),
    .X(io_result[25]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output92 (.A(net92),
    .X(io_result[26]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output93 (.A(net93),
    .X(io_result[27]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output94 (.A(net94),
    .X(io_result[28]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output95 (.A(net95),
    .X(io_result[29]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output96 (.A(net96),
    .X(io_result[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output97 (.A(net97),
    .X(io_result[30]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output98 (.A(net73),
    .X(io_result[31]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output99 (.A(net98),
    .X(io_result[3]));
 sky130_fd_sc_hd__buf_4 place121 (.A(_191_),
    .X(net120));
 sky130_fd_sc_hd__buf_4 place122 (.A(_174_),
    .X(net121));
 sky130_fd_sc_hd__buf_4 place123 (.A(_173_),
    .X(net122));
 sky130_fd_sc_hd__buf_4 place124 (.A(_168_),
    .X(net123));
 sky130_fd_sc_hd__buf_4 place125 (.A(_167_),
    .X(net124));
 sky130_fd_sc_hd__buf_4 place126 (.A(_167_),
    .X(net125));
 sky130_fd_sc_hd__buf_4 place127 (.A(_162_),
    .X(net126));
 sky130_fd_sc_hd__buf_4 place128 (.A(net72),
    .X(net127));
 sky130_fd_sc_hd__buf_4 place129 (.A(net71),
    .X(net128));
 sky130_fd_sc_hd__buf_4 place130 (.A(net70),
    .X(net129));
 sky130_fd_sc_hd__buf_4 place131 (.A(net69),
    .X(net130));
endmodule
module \ALU_32_0_32_0_32_unused_CO[30:0]_X_HAN_CARLSON  (A,
    B,
    BI,
    CI,
    Y,
    \CO[31] );
 input [31:0] A;
 input [31:0] B;
 input BI;
 input CI;
 output [31:0] Y;
 output \CO[31] ;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;

 sky130_fd_sc_hd__nor2_1 _219_ (.A(_216_),
    .B(_218_),
    .Y(_000_));
 sky130_fd_sc_hd__xor2_1 _220_ (.A(BI),
    .B(B[18]),
    .X(_001_));
 sky130_fd_sc_hd__nand2_1 _221_ (.A(A[18]),
    .B(_001_),
    .Y(_002_));
 sky130_fd_sc_hd__xnor3_1 _222_ (.A(BI),
    .B(B[18]),
    .C(A[18]),
    .X(_003_));
 sky130_fd_sc_hd__xor2_1 _223_ (.A(_000_),
    .B(_003_),
    .X(Y[18]));
 sky130_fd_sc_hd__o21ai_0 _224_ (.A1(_000_),
    .A2(_003_),
    .B1(_002_),
    .Y(_004_));
 sky130_fd_sc_hd__xor2_1 _225_ (.A(BI),
    .B(B[19]),
    .X(_005_));
 sky130_fd_sc_hd__nand2_1 _226_ (.A(A[19]),
    .B(_005_),
    .Y(_006_));
 sky130_fd_sc_hd__xnor3_1 _227_ (.A(BI),
    .B(B[19]),
    .C(A[19]),
    .X(_007_));
 sky130_fd_sc_hd__xnor2_1 _228_ (.A(_004_),
    .B(_007_),
    .Y(Y[19]));
 sky130_fd_sc_hd__nor2_1 _229_ (.A(_003_),
    .B(_007_),
    .Y(_008_));
 sky130_fd_sc_hd__o21ai_0 _230_ (.A1(_002_),
    .A2(_007_),
    .B1(_006_),
    .Y(_009_));
 sky130_fd_sc_hd__a21oi_1 _231_ (.A1(_212_),
    .A2(_008_),
    .B1(_009_),
    .Y(_010_));
 sky130_fd_sc_hd__nand2_1 _232_ (.A(_210_),
    .B(_008_),
    .Y(_011_));
 sky130_fd_sc_hd__o21bai_1 _233_ (.A1(_195_),
    .A2(_197_),
    .B1_N(_011_),
    .Y(_012_));
 sky130_fd_sc_hd__nand2_1 _234_ (.A(_010_),
    .B(_012_),
    .Y(_013_));
 sky130_fd_sc_hd__nor2_1 _235_ (.A(_199_),
    .B(_011_),
    .Y(_014_));
 sky130_fd_sc_hd__a21oi_1 _236_ (.A1(_173_),
    .A2(_014_),
    .B1(_013_),
    .Y(_015_));
 sky130_fd_sc_hd__xor2_1 _237_ (.A(BI),
    .B(B[20]),
    .X(_016_));
 sky130_fd_sc_hd__nand2_1 _238_ (.A(A[20]),
    .B(_016_),
    .Y(_017_));
 sky130_fd_sc_hd__xnor3_1 _239_ (.A(BI),
    .B(B[20]),
    .C(A[20]),
    .X(_018_));
 sky130_fd_sc_hd__xor2_1 _240_ (.A(_015_),
    .B(_018_),
    .X(Y[20]));
 sky130_fd_sc_hd__o21ai_0 _241_ (.A1(_015_),
    .A2(_018_),
    .B1(_017_),
    .Y(_019_));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(BI),
    .B(B[21]),
    .X(_020_));
 sky130_fd_sc_hd__nand2_1 _243_ (.A(A[21]),
    .B(_020_),
    .Y(_021_));
 sky130_fd_sc_hd__xnor3_1 _244_ (.A(BI),
    .B(B[21]),
    .C(A[21]),
    .X(_022_));
 sky130_fd_sc_hd__xnor2_1 _245_ (.A(_019_),
    .B(_022_),
    .Y(Y[21]));
 sky130_fd_sc_hd__nor2_1 _246_ (.A(_018_),
    .B(_022_),
    .Y(_023_));
 sky130_fd_sc_hd__o21ai_0 _247_ (.A1(_017_),
    .A2(_022_),
    .B1(_021_),
    .Y(_024_));
 sky130_fd_sc_hd__a21oi_1 _248_ (.A1(_009_),
    .A2(_023_),
    .B1(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__nand2_1 _249_ (.A(_008_),
    .B(_023_),
    .Y(_026_));
 sky130_fd_sc_hd__o21bai_1 _250_ (.A1(_211_),
    .A2(_212_),
    .B1_N(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__nand2_1 _251_ (.A(_025_),
    .B(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nor2_1 _252_ (.A(_214_),
    .B(_026_),
    .Y(_029_));
 sky130_fd_sc_hd__a21oi_1 _253_ (.A1(_187_),
    .A2(_029_),
    .B1(_028_),
    .Y(_030_));
 sky130_fd_sc_hd__xor2_1 _254_ (.A(BI),
    .B(B[22]),
    .X(_031_));
 sky130_fd_sc_hd__nand2_1 _255_ (.A(A[22]),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__xnor2_1 _256_ (.A(A[22]),
    .B(_031_),
    .Y(_033_));
 sky130_fd_sc_hd__xor2_1 _257_ (.A(_030_),
    .B(_033_),
    .X(Y[22]));
 sky130_fd_sc_hd__o21ai_0 _258_ (.A1(_030_),
    .A2(_033_),
    .B1(_032_),
    .Y(_034_));
 sky130_fd_sc_hd__xor2_1 _259_ (.A(BI),
    .B(B[23]),
    .X(_035_));
 sky130_fd_sc_hd__nand2_1 _260_ (.A(A[23]),
    .B(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__xnor2_1 _261_ (.A(A[23]),
    .B(_035_),
    .Y(_037_));
 sky130_fd_sc_hd__xnor2_1 _262_ (.A(_034_),
    .B(_037_),
    .Y(Y[23]));
 sky130_fd_sc_hd__nor2_1 _263_ (.A(_033_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__nand2_1 _264_ (.A(_023_),
    .B(_038_),
    .Y(_039_));
 sky130_fd_sc_hd__nor2_1 _265_ (.A(_011_),
    .B(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__nor4_1 _266_ (.A(_168_),
    .B(_199_),
    .C(_011_),
    .D(_039_),
    .Y(_041_));
 sky130_fd_sc_hd__o21ai_0 _267_ (.A1(_032_),
    .A2(_037_),
    .B1(_036_),
    .Y(_042_));
 sky130_fd_sc_hd__a21oi_1 _268_ (.A1(_024_),
    .A2(_038_),
    .B1(_042_),
    .Y(_043_));
 sky130_fd_sc_hd__o21ai_0 _269_ (.A1(_010_),
    .A2(_039_),
    .B1(_043_),
    .Y(_044_));
 sky130_fd_sc_hd__a221oi_1 _270_ (.A1(_200_),
    .A2(_040_),
    .B1(_041_),
    .B2(_144_),
    .C1(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__xor2_1 _271_ (.A(BI),
    .B(B[24]),
    .X(_046_));
 sky130_fd_sc_hd__nand2_1 _272_ (.A(A[24]),
    .B(_046_),
    .Y(_047_));
 sky130_fd_sc_hd__xnor2_1 _273_ (.A(A[24]),
    .B(_046_),
    .Y(_048_));
 sky130_fd_sc_hd__xor2_1 _274_ (.A(_045_),
    .B(_048_),
    .X(Y[24]));
 sky130_fd_sc_hd__o21ai_0 _275_ (.A1(_045_),
    .A2(_048_),
    .B1(_047_),
    .Y(_049_));
 sky130_fd_sc_hd__xor2_1 _276_ (.A(BI),
    .B(B[25]),
    .X(_050_));
 sky130_fd_sc_hd__nand2_1 _277_ (.A(A[25]),
    .B(_050_),
    .Y(_051_));
 sky130_fd_sc_hd__xnor2_1 _278_ (.A(A[25]),
    .B(_050_),
    .Y(_052_));
 sky130_fd_sc_hd__xnor2_1 _279_ (.A(_049_),
    .B(_052_),
    .Y(Y[25]));
 sky130_fd_sc_hd__nor2_1 _280_ (.A(_048_),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__o21ai_0 _281_ (.A1(_047_),
    .A2(_052_),
    .B1(_051_),
    .Y(_054_));
 sky130_fd_sc_hd__a21oi_1 _282_ (.A1(_042_),
    .A2(_053_),
    .B1(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__nand2_1 _283_ (.A(_038_),
    .B(_053_),
    .Y(_056_));
 sky130_fd_sc_hd__nor2_1 _284_ (.A(_026_),
    .B(_056_),
    .Y(_057_));
 sky130_fd_sc_hd__a211oi_1 _285_ (.A1(_213_),
    .A2(_215_),
    .B1(_026_),
    .C1(_056_),
    .Y(_058_));
 sky130_fd_sc_hd__o21ai_0 _286_ (.A1(_025_),
    .A2(_056_),
    .B1(_055_),
    .Y(_059_));
 sky130_fd_sc_hd__xor2_1 _287_ (.A(BI),
    .B(B[0]),
    .X(_060_));
 sky130_fd_sc_hd__a211oi_1 _288_ (.A1(_218_),
    .A2(_057_),
    .B1(_058_),
    .C1(_059_),
    .Y(_061_));
 sky130_fd_sc_hd__xor2_1 _289_ (.A(BI),
    .B(B[26]),
    .X(_062_));
 sky130_fd_sc_hd__nand2_1 _290_ (.A(A[26]),
    .B(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__xnor2_1 _291_ (.A(A[26]),
    .B(_062_),
    .Y(_064_));
 sky130_fd_sc_hd__xor2_1 _292_ (.A(_061_),
    .B(_064_),
    .X(Y[26]));
 sky130_fd_sc_hd__o21ai_0 _293_ (.A1(_061_),
    .A2(_064_),
    .B1(_063_),
    .Y(_065_));
 sky130_fd_sc_hd__xor2_1 _294_ (.A(BI),
    .B(B[27]),
    .X(_066_));
 sky130_fd_sc_hd__nand2_1 _295_ (.A(A[27]),
    .B(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__xnor2_1 _296_ (.A(A[27]),
    .B(_066_),
    .Y(_068_));
 sky130_fd_sc_hd__xnor2_1 _297_ (.A(_065_),
    .B(_068_),
    .Y(Y[27]));
 sky130_fd_sc_hd__nor2_1 _298_ (.A(_064_),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__nand2_1 _299_ (.A(_053_),
    .B(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__nor2_1 _300_ (.A(_039_),
    .B(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__o21ai_0 _301_ (.A1(_063_),
    .A2(_068_),
    .B1(_067_),
    .Y(_072_));
 sky130_fd_sc_hd__a21oi_1 _302_ (.A1(_054_),
    .A2(_069_),
    .B1(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__a211oi_1 _303_ (.A1(_010_),
    .A2(_012_),
    .B1(_039_),
    .C1(_070_),
    .Y(_074_));
 sky130_fd_sc_hd__o21ai_0 _304_ (.A1(_043_),
    .A2(_070_),
    .B1(_073_),
    .Y(_075_));
 sky130_fd_sc_hd__a311oi_1 _305_ (.A1(_173_),
    .A2(_014_),
    .A3(_071_),
    .B1(_074_),
    .C1(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__xnor2_1 _306_ (.A(A[0]),
    .B(_060_),
    .Y(_077_));
 sky130_fd_sc_hd__xor2_1 _307_ (.A(BI),
    .B(B[28]),
    .X(_078_));
 sky130_fd_sc_hd__nand2_1 _308_ (.A(A[28]),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__xnor2_1 _309_ (.A(A[28]),
    .B(_078_),
    .Y(_080_));
 sky130_fd_sc_hd__xor2_1 _310_ (.A(_076_),
    .B(_080_),
    .X(Y[28]));
 sky130_fd_sc_hd__o21ai_0 _311_ (.A1(_076_),
    .A2(_080_),
    .B1(_079_),
    .Y(_081_));
 sky130_fd_sc_hd__xor2_1 _312_ (.A(BI),
    .B(B[29]),
    .X(_082_));
 sky130_fd_sc_hd__nand2_1 _313_ (.A(A[29]),
    .B(_082_),
    .Y(_083_));
 sky130_fd_sc_hd__xnor2_1 _314_ (.A(A[29]),
    .B(_082_),
    .Y(_084_));
 sky130_fd_sc_hd__xnor2_1 _315_ (.A(_081_),
    .B(_084_),
    .Y(Y[29]));
 sky130_fd_sc_hd__nor2_1 _316_ (.A(_080_),
    .B(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__nand2_1 _317_ (.A(_069_),
    .B(_085_),
    .Y(_086_));
 sky130_fd_sc_hd__nor2_1 _318_ (.A(_056_),
    .B(_086_),
    .Y(_087_));
 sky130_fd_sc_hd__a211oi_1 _319_ (.A1(_025_),
    .A2(_027_),
    .B1(_056_),
    .C1(_086_),
    .Y(_088_));
 sky130_fd_sc_hd__o21ai_0 _320_ (.A1(_079_),
    .A2(_084_),
    .B1(_083_),
    .Y(_089_));
 sky130_fd_sc_hd__a21oi_1 _321_ (.A1(_072_),
    .A2(_085_),
    .B1(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__xnor2_1 _322_ (.A(CI),
    .B(_077_),
    .Y(Y[0]));
 sky130_fd_sc_hd__o21ai_0 _323_ (.A1(_055_),
    .A2(_086_),
    .B1(_090_),
    .Y(_091_));
 sky130_fd_sc_hd__a311oi_1 _324_ (.A1(_187_),
    .A2(_029_),
    .A3(_087_),
    .B1(_088_),
    .C1(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__xor2_1 _325_ (.A(BI),
    .B(B[30]),
    .X(_093_));
 sky130_fd_sc_hd__nand2_1 _326_ (.A(A[30]),
    .B(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__maj3_1 _327_ (.A(CI),
    .B(A[0]),
    .C(_060_),
    .X(_095_));
 sky130_fd_sc_hd__xnor2_1 _328_ (.A(A[30]),
    .B(_093_),
    .Y(_096_));
 sky130_fd_sc_hd__xor2_1 _329_ (.A(_092_),
    .B(_096_),
    .X(Y[30]));
 sky130_fd_sc_hd__o21ai_0 _330_ (.A1(_092_),
    .A2(_096_),
    .B1(_094_),
    .Y(_097_));
 sky130_fd_sc_hd__xor2_1 _331_ (.A(BI),
    .B(B[31]),
    .X(_098_));
 sky130_fd_sc_hd__nand2_1 _332_ (.A(A[31]),
    .B(_098_),
    .Y(_099_));
 sky130_fd_sc_hd__xnor2_1 _333_ (.A(A[31]),
    .B(_098_),
    .Y(_100_));
 sky130_fd_sc_hd__xnor2_1 _334_ (.A(_097_),
    .B(_100_),
    .Y(Y[31]));
 sky130_fd_sc_hd__o21ai_0 _335_ (.A1(_094_),
    .A2(_100_),
    .B1(_099_),
    .Y(_101_));
 sky130_fd_sc_hd__nor2_1 _336_ (.A(_096_),
    .B(_100_),
    .Y(_102_));
 sky130_fd_sc_hd__nand2_1 _337_ (.A(_085_),
    .B(_102_),
    .Y(_103_));
 sky130_fd_sc_hd__a21oi_1 _338_ (.A1(_089_),
    .A2(_102_),
    .B1(_101_),
    .Y(_104_));
 sky130_fd_sc_hd__o21ai_0 _339_ (.A1(_073_),
    .A2(_103_),
    .B1(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__nor3_1 _340_ (.A(_045_),
    .B(_070_),
    .C(_103_),
    .Y(_106_));
 sky130_fd_sc_hd__or2_0 _341_ (.A(_105_),
    .B(_106_),
    .X(\CO[31] ));
 sky130_fd_sc_hd__xor2_1 _342_ (.A(BI),
    .B(B[1]),
    .X(_107_));
 sky130_fd_sc_hd__xnor2_1 _343_ (.A(A[1]),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__xnor2_1 _344_ (.A(_095_),
    .B(_108_),
    .Y(Y[1]));
 sky130_fd_sc_hd__maj3_1 _345_ (.A(A[1]),
    .B(_095_),
    .C(_107_),
    .X(_109_));
 sky130_fd_sc_hd__xor2_1 _346_ (.A(BI),
    .B(B[2]),
    .X(_110_));
 sky130_fd_sc_hd__xnor2_1 _347_ (.A(A[2]),
    .B(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__xnor2_1 _348_ (.A(_109_),
    .B(_111_),
    .Y(Y[2]));
 sky130_fd_sc_hd__maj3_1 _349_ (.A(A[2]),
    .B(_109_),
    .C(_110_),
    .X(_112_));
 sky130_fd_sc_hd__xor2_1 _350_ (.A(BI),
    .B(B[3]),
    .X(_113_));
 sky130_fd_sc_hd__nand2_1 _351_ (.A(A[3]),
    .B(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__xnor2_1 _352_ (.A(A[3]),
    .B(_113_),
    .Y(_115_));
 sky130_fd_sc_hd__xnor2_1 _353_ (.A(_112_),
    .B(_115_),
    .Y(Y[3]));
 sky130_fd_sc_hd__nor2_1 _354_ (.A(_111_),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__o211ai_1 _355_ (.A1(A[3]),
    .A2(_113_),
    .B1(_110_),
    .C1(A[2]),
    .Y(_117_));
 sky130_fd_sc_hd__nand2_1 _356_ (.A(_114_),
    .B(_117_),
    .Y(_118_));
 sky130_fd_sc_hd__a21oi_1 _357_ (.A1(_109_),
    .A2(_116_),
    .B1(_118_),
    .Y(_119_));
 sky130_fd_sc_hd__xor2_1 _358_ (.A(BI),
    .B(B[4]),
    .X(_120_));
 sky130_fd_sc_hd__nand2_1 _359_ (.A(A[4]),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__xnor3_1 _360_ (.A(BI),
    .B(B[4]),
    .C(A[4]),
    .X(_122_));
 sky130_fd_sc_hd__xor2_1 _361_ (.A(_119_),
    .B(_122_),
    .X(Y[4]));
 sky130_fd_sc_hd__o21ai_0 _362_ (.A1(_119_),
    .A2(_122_),
    .B1(_121_),
    .Y(_123_));
 sky130_fd_sc_hd__xor2_1 _363_ (.A(BI),
    .B(B[5]),
    .X(_124_));
 sky130_fd_sc_hd__nand2_1 _364_ (.A(A[5]),
    .B(_124_),
    .Y(_125_));
 sky130_fd_sc_hd__xnor3_1 _365_ (.A(BI),
    .B(B[5]),
    .C(A[5]),
    .X(_126_));
 sky130_fd_sc_hd__xnor2_1 _366_ (.A(_123_),
    .B(_126_),
    .Y(Y[5]));
 sky130_fd_sc_hd__nor2_1 _367_ (.A(_122_),
    .B(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__or2_0 _368_ (.A(_122_),
    .B(_126_),
    .X(_128_));
 sky130_fd_sc_hd__a21oi_1 _369_ (.A1(_114_),
    .A2(_117_),
    .B1(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__o21ai_0 _370_ (.A1(_121_),
    .A2(_126_),
    .B1(_125_),
    .Y(_130_));
 sky130_fd_sc_hd__nor3_1 _371_ (.A(_111_),
    .B(_115_),
    .C(_128_),
    .Y(_131_));
 sky130_fd_sc_hd__a211oi_1 _372_ (.A1(_109_),
    .A2(_131_),
    .B1(_130_),
    .C1(_129_),
    .Y(_132_));
 sky130_fd_sc_hd__xor2_1 _373_ (.A(BI),
    .B(B[6]),
    .X(_133_));
 sky130_fd_sc_hd__nand2_1 _374_ (.A(A[6]),
    .B(_133_),
    .Y(_134_));
 sky130_fd_sc_hd__xnor2_1 _375_ (.A(A[6]),
    .B(_133_),
    .Y(_135_));
 sky130_fd_sc_hd__xor2_1 _376_ (.A(_132_),
    .B(_135_),
    .X(Y[6]));
 sky130_fd_sc_hd__o21ai_0 _377_ (.A1(_132_),
    .A2(_135_),
    .B1(_134_),
    .Y(_136_));
 sky130_fd_sc_hd__xor2_1 _378_ (.A(BI),
    .B(B[7]),
    .X(_137_));
 sky130_fd_sc_hd__nand2_1 _379_ (.A(A[7]),
    .B(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__xnor2_1 _380_ (.A(A[7]),
    .B(_137_),
    .Y(_139_));
 sky130_fd_sc_hd__xnor2_1 _381_ (.A(_136_),
    .B(_139_),
    .Y(Y[7]));
 sky130_fd_sc_hd__nor2_1 _382_ (.A(_135_),
    .B(_139_),
    .Y(_140_));
 sky130_fd_sc_hd__o21ai_0 _383_ (.A1(_134_),
    .A2(_139_),
    .B1(_138_),
    .Y(_141_));
 sky130_fd_sc_hd__a21oi_1 _384_ (.A1(_130_),
    .A2(_140_),
    .B1(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__nand2_1 _385_ (.A(_127_),
    .B(_140_),
    .Y(_143_));
 sky130_fd_sc_hd__o21ai_0 _386_ (.A1(_119_),
    .A2(_143_),
    .B1(_142_),
    .Y(_144_));
 sky130_fd_sc_hd__xor2_1 _387_ (.A(BI),
    .B(B[8]),
    .X(_145_));
 sky130_fd_sc_hd__nand2_1 _388_ (.A(A[8]),
    .B(_145_),
    .Y(_146_));
 sky130_fd_sc_hd__xnor2_1 _389_ (.A(A[8]),
    .B(_145_),
    .Y(_147_));
 sky130_fd_sc_hd__xnor2_1 _390_ (.A(_144_),
    .B(_147_),
    .Y(Y[8]));
 sky130_fd_sc_hd__maj3_1 _391_ (.A(A[8]),
    .B(_144_),
    .C(_145_),
    .X(_148_));
 sky130_fd_sc_hd__xor2_1 _392_ (.A(BI),
    .B(B[9]),
    .X(_149_));
 sky130_fd_sc_hd__nand2_1 _393_ (.A(A[9]),
    .B(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__xnor2_1 _394_ (.A(A[9]),
    .B(_149_),
    .Y(_151_));
 sky130_fd_sc_hd__xnor2_1 _395_ (.A(_148_),
    .B(_151_),
    .Y(Y[9]));
 sky130_fd_sc_hd__xor2_1 _396_ (.A(BI),
    .B(B[10]),
    .X(_152_));
 sky130_fd_sc_hd__nand2_1 _397_ (.A(A[10]),
    .B(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__xnor2_1 _398_ (.A(A[10]),
    .B(_152_),
    .Y(_154_));
 sky130_fd_sc_hd__nor2_1 _399_ (.A(_147_),
    .B(_151_),
    .Y(_155_));
 sky130_fd_sc_hd__o21ai_0 _400_ (.A1(_146_),
    .A2(_151_),
    .B1(_150_),
    .Y(_156_));
 sky130_fd_sc_hd__a21oi_1 _401_ (.A1(_141_),
    .A2(_155_),
    .B1(_156_),
    .Y(_157_));
 sky130_fd_sc_hd__nor4_1 _402_ (.A(_135_),
    .B(_139_),
    .C(_147_),
    .D(_151_),
    .Y(_158_));
 sky130_fd_sc_hd__o21ai_0 _403_ (.A1(_129_),
    .A2(_130_),
    .B1(_158_),
    .Y(_159_));
 sky130_fd_sc_hd__nand3_1 _404_ (.A(_109_),
    .B(_131_),
    .C(_158_),
    .Y(_160_));
 sky130_fd_sc_hd__nand3_1 _405_ (.A(_157_),
    .B(_159_),
    .C(_160_),
    .Y(_161_));
 sky130_fd_sc_hd__clkinv_1 _406_ (.A(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__xnor2_1 _407_ (.A(_154_),
    .B(_161_),
    .Y(Y[10]));
 sky130_fd_sc_hd__o21ai_0 _408_ (.A1(_154_),
    .A2(_162_),
    .B1(_153_),
    .Y(_163_));
 sky130_fd_sc_hd__xor2_1 _409_ (.A(BI),
    .B(B[11]),
    .X(_164_));
 sky130_fd_sc_hd__nand2_1 _410_ (.A(A[11]),
    .B(_164_),
    .Y(_165_));
 sky130_fd_sc_hd__xnor2_1 _411_ (.A(A[11]),
    .B(_164_),
    .Y(_166_));
 sky130_fd_sc_hd__xnor2_1 _412_ (.A(_163_),
    .B(_166_),
    .Y(Y[11]));
 sky130_fd_sc_hd__nor2_1 _413_ (.A(_154_),
    .B(_166_),
    .Y(_167_));
 sky130_fd_sc_hd__nand2_1 _414_ (.A(_155_),
    .B(_167_),
    .Y(_168_));
 sky130_fd_sc_hd__nand4_1 _415_ (.A(_127_),
    .B(_140_),
    .C(_155_),
    .D(_167_),
    .Y(_169_));
 sky130_fd_sc_hd__o211ai_1 _416_ (.A1(A[11]),
    .A2(_164_),
    .B1(_152_),
    .C1(A[10]),
    .Y(_170_));
 sky130_fd_sc_hd__nand2_1 _417_ (.A(_165_),
    .B(_170_),
    .Y(_171_));
 sky130_fd_sc_hd__a21oi_1 _418_ (.A1(_156_),
    .A2(_167_),
    .B1(_171_),
    .Y(_172_));
 sky130_fd_sc_hd__o221ai_1 _419_ (.A1(_142_),
    .A2(_168_),
    .B1(_169_),
    .B2(_119_),
    .C1(_172_),
    .Y(_173_));
 sky130_fd_sc_hd__xor2_1 _420_ (.A(BI),
    .B(B[12]),
    .X(_174_));
 sky130_fd_sc_hd__xnor2_1 _421_ (.A(A[12]),
    .B(_174_),
    .Y(_175_));
 sky130_fd_sc_hd__xnor2_1 _422_ (.A(_173_),
    .B(_175_),
    .Y(Y[12]));
 sky130_fd_sc_hd__maj3_1 _423_ (.A(A[12]),
    .B(_173_),
    .C(_174_),
    .X(_176_));
 sky130_fd_sc_hd__xor2_1 _424_ (.A(BI),
    .B(B[13]),
    .X(_177_));
 sky130_fd_sc_hd__nand2_1 _425_ (.A(A[13]),
    .B(_177_),
    .Y(_178_));
 sky130_fd_sc_hd__xnor2_1 _426_ (.A(A[13]),
    .B(_177_),
    .Y(_179_));
 sky130_fd_sc_hd__xnor2_1 _427_ (.A(_176_),
    .B(_179_),
    .Y(Y[13]));
 sky130_fd_sc_hd__nor2_1 _428_ (.A(_175_),
    .B(_179_),
    .Y(_180_));
 sky130_fd_sc_hd__nand2_1 _429_ (.A(_167_),
    .B(_180_),
    .Y(_181_));
 sky130_fd_sc_hd__nand3_1 _430_ (.A(_158_),
    .B(_167_),
    .C(_180_),
    .Y(_182_));
 sky130_fd_sc_hd__a211oi_1 _431_ (.A1(_165_),
    .A2(_170_),
    .B1(_175_),
    .C1(_179_),
    .Y(_183_));
 sky130_fd_sc_hd__o211ai_1 _432_ (.A1(A[13]),
    .A2(_177_),
    .B1(_174_),
    .C1(A[12]),
    .Y(_184_));
 sky130_fd_sc_hd__nand2_1 _433_ (.A(_178_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__nor2_1 _434_ (.A(_183_),
    .B(_185_),
    .Y(_186_));
 sky130_fd_sc_hd__o221ai_1 _435_ (.A1(_157_),
    .A2(_181_),
    .B1(_182_),
    .B2(_132_),
    .C1(_186_),
    .Y(_187_));
 sky130_fd_sc_hd__xor2_1 _436_ (.A(BI),
    .B(B[14]),
    .X(_188_));
 sky130_fd_sc_hd__xnor3_1 _437_ (.A(BI),
    .B(B[14]),
    .C(A[14]),
    .X(_189_));
 sky130_fd_sc_hd__xnor2_1 _438_ (.A(_187_),
    .B(_189_),
    .Y(Y[14]));
 sky130_fd_sc_hd__maj3_1 _439_ (.A(A[14]),
    .B(_187_),
    .C(_188_),
    .X(_190_));
 sky130_fd_sc_hd__xor2_1 _440_ (.A(BI),
    .B(B[15]),
    .X(_191_));
 sky130_fd_sc_hd__nand2_1 _441_ (.A(A[15]),
    .B(_191_),
    .Y(_192_));
 sky130_fd_sc_hd__xnor3_1 _442_ (.A(BI),
    .B(B[15]),
    .C(A[15]),
    .X(_193_));
 sky130_fd_sc_hd__xnor2_1 _443_ (.A(_190_),
    .B(_193_),
    .Y(Y[15]));
 sky130_fd_sc_hd__nor2_1 _444_ (.A(_189_),
    .B(_193_),
    .Y(_194_));
 sky130_fd_sc_hd__a21boi_0 _445_ (.A1(_178_),
    .A2(_184_),
    .B1_N(_194_),
    .Y(_195_));
 sky130_fd_sc_hd__o211ai_1 _446_ (.A1(A[15]),
    .A2(_191_),
    .B1(_188_),
    .C1(A[14]),
    .Y(_196_));
 sky130_fd_sc_hd__nand2_1 _447_ (.A(_192_),
    .B(_196_),
    .Y(_197_));
 sky130_fd_sc_hd__nor2_1 _448_ (.A(_195_),
    .B(_197_),
    .Y(_198_));
 sky130_fd_sc_hd__nand2_1 _449_ (.A(_180_),
    .B(_194_),
    .Y(_199_));
 sky130_fd_sc_hd__o21ai_0 _450_ (.A1(_172_),
    .A2(_199_),
    .B1(_198_),
    .Y(_200_));
 sky130_fd_sc_hd__nor2_1 _451_ (.A(_168_),
    .B(_199_),
    .Y(_201_));
 sky130_fd_sc_hd__a21oi_1 _452_ (.A1(_144_),
    .A2(_201_),
    .B1(_200_),
    .Y(_202_));
 sky130_fd_sc_hd__xor2_1 _453_ (.A(BI),
    .B(B[16]),
    .X(_203_));
 sky130_fd_sc_hd__nand2_1 _454_ (.A(A[16]),
    .B(_203_),
    .Y(_204_));
 sky130_fd_sc_hd__xnor3_1 _455_ (.A(BI),
    .B(B[16]),
    .C(A[16]),
    .X(_205_));
 sky130_fd_sc_hd__xor2_1 _456_ (.A(_202_),
    .B(_205_),
    .X(Y[16]));
 sky130_fd_sc_hd__o21ai_0 _457_ (.A1(_202_),
    .A2(_205_),
    .B1(_204_),
    .Y(_206_));
 sky130_fd_sc_hd__xor2_1 _458_ (.A(BI),
    .B(B[17]),
    .X(_207_));
 sky130_fd_sc_hd__nand2_1 _459_ (.A(A[17]),
    .B(_207_),
    .Y(_208_));
 sky130_fd_sc_hd__xnor3_1 _460_ (.A(BI),
    .B(B[17]),
    .C(A[17]),
    .X(_209_));
 sky130_fd_sc_hd__xnor2_1 _461_ (.A(_206_),
    .B(_209_),
    .Y(Y[17]));
 sky130_fd_sc_hd__nor2_1 _462_ (.A(_205_),
    .B(_209_),
    .Y(_210_));
 sky130_fd_sc_hd__a21boi_0 _463_ (.A1(_192_),
    .A2(_196_),
    .B1_N(_210_),
    .Y(_211_));
 sky130_fd_sc_hd__o21ai_0 _464_ (.A1(_204_),
    .A2(_209_),
    .B1(_208_),
    .Y(_212_));
 sky130_fd_sc_hd__nor2_1 _465_ (.A(_211_),
    .B(_212_),
    .Y(_213_));
 sky130_fd_sc_hd__nand2_1 _466_ (.A(_194_),
    .B(_210_),
    .Y(_214_));
 sky130_fd_sc_hd__o21bai_1 _467_ (.A1(_183_),
    .A2(_185_),
    .B1_N(_214_),
    .Y(_215_));
 sky130_fd_sc_hd__nand2_1 _468_ (.A(_213_),
    .B(_215_),
    .Y(_216_));
 sky130_fd_sc_hd__nand4_1 _469_ (.A(_167_),
    .B(_180_),
    .C(_194_),
    .D(_210_),
    .Y(_217_));
 sky130_fd_sc_hd__a31oi_1 _470_ (.A1(_157_),
    .A2(_159_),
    .A3(_160_),
    .B1(_217_),
    .Y(_218_));
endmodule
module ALU_32_0_32_0_32_unused_CO_X_HAN_CARLSON (A,
    B,
    BI,
    CI,
    Y);
 input [31:0] A;
 input [31:0] B;
 input BI;
 input CI;
 output [31:0] Y;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;

 sky130_fd_sc_hd__nor2_1 _219_ (.A(_216_),
    .B(_218_),
    .Y(_000_));
 sky130_fd_sc_hd__xor2_1 _220_ (.A(BI),
    .B(B[18]),
    .X(_001_));
 sky130_fd_sc_hd__nand2_1 _221_ (.A(A[18]),
    .B(_001_),
    .Y(_002_));
 sky130_fd_sc_hd__xnor3_1 _222_ (.A(BI),
    .B(B[18]),
    .C(A[18]),
    .X(_003_));
 sky130_fd_sc_hd__xor2_1 _223_ (.A(_000_),
    .B(_003_),
    .X(Y[18]));
 sky130_fd_sc_hd__o21ai_0 _224_ (.A1(_000_),
    .A2(_003_),
    .B1(_002_),
    .Y(_004_));
 sky130_fd_sc_hd__xor2_1 _225_ (.A(BI),
    .B(B[19]),
    .X(_005_));
 sky130_fd_sc_hd__nand2_1 _226_ (.A(A[19]),
    .B(_005_),
    .Y(_006_));
 sky130_fd_sc_hd__xnor3_1 _227_ (.A(BI),
    .B(B[19]),
    .C(A[19]),
    .X(_007_));
 sky130_fd_sc_hd__xnor2_1 _228_ (.A(_004_),
    .B(_007_),
    .Y(Y[19]));
 sky130_fd_sc_hd__nor2_1 _229_ (.A(_003_),
    .B(_007_),
    .Y(_008_));
 sky130_fd_sc_hd__o21ai_0 _230_ (.A1(_002_),
    .A2(_007_),
    .B1(_006_),
    .Y(_009_));
 sky130_fd_sc_hd__a21oi_1 _231_ (.A1(_212_),
    .A2(_008_),
    .B1(_009_),
    .Y(_010_));
 sky130_fd_sc_hd__nand2_1 _232_ (.A(_210_),
    .B(_008_),
    .Y(_011_));
 sky130_fd_sc_hd__o21bai_1 _233_ (.A1(_194_),
    .A2(_196_),
    .B1_N(_011_),
    .Y(_012_));
 sky130_fd_sc_hd__nand2_1 _234_ (.A(_010_),
    .B(_012_),
    .Y(_013_));
 sky130_fd_sc_hd__nor2_1 _235_ (.A(_198_),
    .B(_011_),
    .Y(_014_));
 sky130_fd_sc_hd__a21oi_1 _236_ (.A1(_170_),
    .A2(_014_),
    .B1(_013_),
    .Y(_015_));
 sky130_fd_sc_hd__xor2_1 _237_ (.A(BI),
    .B(B[20]),
    .X(_016_));
 sky130_fd_sc_hd__nand2_1 _238_ (.A(A[20]),
    .B(_016_),
    .Y(_017_));
 sky130_fd_sc_hd__xnor3_1 _239_ (.A(BI),
    .B(B[20]),
    .C(A[20]),
    .X(_018_));
 sky130_fd_sc_hd__xor2_1 _240_ (.A(_015_),
    .B(_018_),
    .X(Y[20]));
 sky130_fd_sc_hd__o21ai_0 _241_ (.A1(_015_),
    .A2(_018_),
    .B1(_017_),
    .Y(_019_));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(BI),
    .B(B[21]),
    .X(_020_));
 sky130_fd_sc_hd__nand2_1 _243_ (.A(A[21]),
    .B(_020_),
    .Y(_021_));
 sky130_fd_sc_hd__xnor3_1 _244_ (.A(BI),
    .B(B[21]),
    .C(A[21]),
    .X(_022_));
 sky130_fd_sc_hd__xnor2_1 _245_ (.A(_019_),
    .B(_022_),
    .Y(Y[21]));
 sky130_fd_sc_hd__nor2_1 _246_ (.A(_018_),
    .B(_022_),
    .Y(_023_));
 sky130_fd_sc_hd__o21ai_0 _247_ (.A1(_017_),
    .A2(_022_),
    .B1(_021_),
    .Y(_024_));
 sky130_fd_sc_hd__a21oi_1 _248_ (.A1(_009_),
    .A2(_023_),
    .B1(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__nand2_1 _249_ (.A(_008_),
    .B(_023_),
    .Y(_026_));
 sky130_fd_sc_hd__o21bai_1 _250_ (.A1(_211_),
    .A2(_212_),
    .B1_N(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__nand2_1 _251_ (.A(_025_),
    .B(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nor2_1 _252_ (.A(_214_),
    .B(_026_),
    .Y(_029_));
 sky130_fd_sc_hd__a21oi_1 _253_ (.A1(_186_),
    .A2(_029_),
    .B1(_028_),
    .Y(_030_));
 sky130_fd_sc_hd__xor2_1 _254_ (.A(BI),
    .B(B[22]),
    .X(_031_));
 sky130_fd_sc_hd__nand2_1 _255_ (.A(A[22]),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__xnor2_1 _256_ (.A(A[22]),
    .B(_031_),
    .Y(_033_));
 sky130_fd_sc_hd__xor2_1 _257_ (.A(_030_),
    .B(_033_),
    .X(Y[22]));
 sky130_fd_sc_hd__o21ai_0 _258_ (.A1(_030_),
    .A2(_033_),
    .B1(_032_),
    .Y(_034_));
 sky130_fd_sc_hd__xor2_1 _259_ (.A(BI),
    .B(B[23]),
    .X(_035_));
 sky130_fd_sc_hd__nand2_1 _260_ (.A(A[23]),
    .B(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__xnor2_1 _261_ (.A(A[23]),
    .B(_035_),
    .Y(_037_));
 sky130_fd_sc_hd__xnor2_1 _262_ (.A(_034_),
    .B(_037_),
    .Y(Y[23]));
 sky130_fd_sc_hd__nor2_1 _263_ (.A(_033_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__nand2_1 _264_ (.A(_023_),
    .B(_038_),
    .Y(_039_));
 sky130_fd_sc_hd__nor2_1 _265_ (.A(_011_),
    .B(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__clkinv_1 _266_ (.A(A[30]),
    .Y(_041_));
 sky130_fd_sc_hd__o21ai_0 _267_ (.A1(_032_),
    .A2(_037_),
    .B1(_036_),
    .Y(_042_));
 sky130_fd_sc_hd__a21oi_1 _268_ (.A1(_024_),
    .A2(_038_),
    .B1(_042_),
    .Y(_043_));
 sky130_fd_sc_hd__a211oi_1 _269_ (.A1(_197_),
    .A2(_199_),
    .B1(_011_),
    .C1(_039_),
    .Y(_044_));
 sky130_fd_sc_hd__o21ai_0 _270_ (.A1(_010_),
    .A2(_039_),
    .B1(_043_),
    .Y(_045_));
 sky130_fd_sc_hd__a311oi_1 _271_ (.A1(_139_),
    .A2(_201_),
    .A3(_040_),
    .B1(_044_),
    .C1(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__xor2_1 _272_ (.A(BI),
    .B(B[24]),
    .X(_047_));
 sky130_fd_sc_hd__nand2_1 _273_ (.A(A[24]),
    .B(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__xnor2_1 _274_ (.A(A[24]),
    .B(_047_),
    .Y(_049_));
 sky130_fd_sc_hd__xor2_1 _275_ (.A(_046_),
    .B(_049_),
    .X(Y[24]));
 sky130_fd_sc_hd__o21ai_0 _276_ (.A1(_046_),
    .A2(_049_),
    .B1(_048_),
    .Y(_050_));
 sky130_fd_sc_hd__xor2_1 _277_ (.A(BI),
    .B(B[25]),
    .X(_051_));
 sky130_fd_sc_hd__nand2_1 _278_ (.A(A[25]),
    .B(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__xnor2_1 _279_ (.A(A[25]),
    .B(_051_),
    .Y(_053_));
 sky130_fd_sc_hd__xnor2_1 _280_ (.A(_050_),
    .B(_053_),
    .Y(Y[25]));
 sky130_fd_sc_hd__nor2_1 _281_ (.A(_049_),
    .B(_053_),
    .Y(_054_));
 sky130_fd_sc_hd__o21ai_0 _282_ (.A1(_048_),
    .A2(_053_),
    .B1(_052_),
    .Y(_055_));
 sky130_fd_sc_hd__a21oi_1 _283_ (.A1(_042_),
    .A2(_054_),
    .B1(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _284_ (.A(_038_),
    .B(_054_),
    .Y(_057_));
 sky130_fd_sc_hd__nor2_1 _285_ (.A(_026_),
    .B(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__a211oi_1 _286_ (.A1(_213_),
    .A2(_215_),
    .B1(_026_),
    .C1(_057_),
    .Y(_059_));
 sky130_fd_sc_hd__o21ai_0 _287_ (.A1(_025_),
    .A2(_057_),
    .B1(_056_),
    .Y(_060_));
 sky130_fd_sc_hd__xor2_1 _288_ (.A(BI),
    .B(B[0]),
    .X(_061_));
 sky130_fd_sc_hd__a211oi_1 _289_ (.A1(_218_),
    .A2(_058_),
    .B1(_059_),
    .C1(_060_),
    .Y(_062_));
 sky130_fd_sc_hd__xor2_1 _290_ (.A(BI),
    .B(B[26]),
    .X(_063_));
 sky130_fd_sc_hd__nand2_1 _291_ (.A(A[26]),
    .B(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__nor2_1 _292_ (.A(A[26]),
    .B(_063_),
    .Y(_065_));
 sky130_fd_sc_hd__xor2_1 _293_ (.A(A[26]),
    .B(_063_),
    .X(_066_));
 sky130_fd_sc_hd__xnor2_1 _294_ (.A(_062_),
    .B(_066_),
    .Y(Y[26]));
 sky130_fd_sc_hd__o21ai_0 _295_ (.A1(_062_),
    .A2(_065_),
    .B1(_064_),
    .Y(_067_));
 sky130_fd_sc_hd__xor2_1 _296_ (.A(BI),
    .B(B[27]),
    .X(_068_));
 sky130_fd_sc_hd__nand2_1 _297_ (.A(A[27]),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__xnor2_1 _298_ (.A(A[27]),
    .B(_068_),
    .Y(_070_));
 sky130_fd_sc_hd__xnor2_1 _299_ (.A(_067_),
    .B(_070_),
    .Y(Y[27]));
 sky130_fd_sc_hd__nor3b_1 _300_ (.A(_070_),
    .B(_065_),
    .C_N(_064_),
    .Y(_071_));
 sky130_fd_sc_hd__nand2_1 _301_ (.A(_054_),
    .B(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__nor2_1 _302_ (.A(_039_),
    .B(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__a211oi_1 _303_ (.A1(_010_),
    .A2(_012_),
    .B1(_039_),
    .C1(_072_),
    .Y(_074_));
 sky130_fd_sc_hd__o21ai_0 _304_ (.A1(_064_),
    .A2(_070_),
    .B1(_069_),
    .Y(_075_));
 sky130_fd_sc_hd__a21oi_1 _305_ (.A1(_055_),
    .A2(_071_),
    .B1(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__o21ai_0 _306_ (.A1(_043_),
    .A2(_072_),
    .B1(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__a311oi_1 _307_ (.A1(_170_),
    .A2(_014_),
    .A3(_073_),
    .B1(_074_),
    .C1(_077_),
    .Y(_078_));
 sky130_fd_sc_hd__xnor2_1 _308_ (.A(A[0]),
    .B(_061_),
    .Y(_079_));
 sky130_fd_sc_hd__xor2_1 _309_ (.A(BI),
    .B(B[28]),
    .X(_080_));
 sky130_fd_sc_hd__nand2_1 _310_ (.A(A[28]),
    .B(_080_),
    .Y(_081_));
 sky130_fd_sc_hd__xnor2_1 _311_ (.A(A[28]),
    .B(_080_),
    .Y(_082_));
 sky130_fd_sc_hd__xor2_1 _312_ (.A(_078_),
    .B(_082_),
    .X(Y[28]));
 sky130_fd_sc_hd__o21ai_0 _313_ (.A1(_078_),
    .A2(_082_),
    .B1(_081_),
    .Y(_083_));
 sky130_fd_sc_hd__xor2_1 _314_ (.A(BI),
    .B(B[29]),
    .X(_084_));
 sky130_fd_sc_hd__nand2_1 _315_ (.A(A[29]),
    .B(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__xnor2_1 _316_ (.A(A[29]),
    .B(_084_),
    .Y(_086_));
 sky130_fd_sc_hd__xnor2_1 _317_ (.A(_083_),
    .B(_086_),
    .Y(Y[29]));
 sky130_fd_sc_hd__nor2_1 _318_ (.A(_082_),
    .B(_086_),
    .Y(_087_));
 sky130_fd_sc_hd__nand2_1 _319_ (.A(_071_),
    .B(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__nand4_1 _320_ (.A(_038_),
    .B(_054_),
    .C(_071_),
    .D(_087_),
    .Y(_089_));
 sky130_fd_sc_hd__nor3_1 _321_ (.A(_214_),
    .B(_026_),
    .C(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__a21oi_1 _322_ (.A1(_025_),
    .A2(_027_),
    .B1(_089_),
    .Y(_091_));
 sky130_fd_sc_hd__o21ai_0 _323_ (.A1(_081_),
    .A2(_086_),
    .B1(_085_),
    .Y(_092_));
 sky130_fd_sc_hd__a21oi_1 _324_ (.A1(_075_),
    .A2(_087_),
    .B1(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__o21ai_0 _325_ (.A1(_056_),
    .A2(_088_),
    .B1(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__a211oi_1 _326_ (.A1(_186_),
    .A2(_090_),
    .B1(_091_),
    .C1(_094_),
    .Y(_095_));
 sky130_fd_sc_hd__xnor2_1 _327_ (.A(CI),
    .B(_079_),
    .Y(Y[0]));
 sky130_fd_sc_hd__xnor2_1 _328_ (.A(BI),
    .B(B[30]),
    .Y(_096_));
 sky130_fd_sc_hd__xnor2_1 _329_ (.A(A[30]),
    .B(_096_),
    .Y(_097_));
 sky130_fd_sc_hd__maj3_1 _330_ (.A(CI),
    .B(A[0]),
    .C(_061_),
    .X(_098_));
 sky130_fd_sc_hd__xnor2_1 _331_ (.A(_095_),
    .B(_097_),
    .Y(Y[30]));
 sky130_fd_sc_hd__maj3_1 _332_ (.A(_041_),
    .B(_095_),
    .C(_096_),
    .X(_099_));
 sky130_fd_sc_hd__xnor2_1 _333_ (.A(B[31]),
    .B(A[31]),
    .Y(_100_));
 sky130_fd_sc_hd__xnor2_1 _334_ (.A(BI),
    .B(_100_),
    .Y(_101_));
 sky130_fd_sc_hd__xnor2_1 _335_ (.A(_099_),
    .B(_101_),
    .Y(Y[31]));
 sky130_fd_sc_hd__xor2_1 _336_ (.A(BI),
    .B(B[1]),
    .X(_102_));
 sky130_fd_sc_hd__xnor2_1 _337_ (.A(A[1]),
    .B(_102_),
    .Y(_103_));
 sky130_fd_sc_hd__xnor2_1 _338_ (.A(_098_),
    .B(_103_),
    .Y(Y[1]));
 sky130_fd_sc_hd__maj3_1 _339_ (.A(A[1]),
    .B(_098_),
    .C(_102_),
    .X(_104_));
 sky130_fd_sc_hd__xor2_1 _340_ (.A(BI),
    .B(B[2]),
    .X(_105_));
 sky130_fd_sc_hd__xnor2_1 _341_ (.A(A[2]),
    .B(_105_),
    .Y(_106_));
 sky130_fd_sc_hd__xnor2_1 _342_ (.A(_104_),
    .B(_106_),
    .Y(Y[2]));
 sky130_fd_sc_hd__maj3_1 _343_ (.A(A[2]),
    .B(_104_),
    .C(_105_),
    .X(_107_));
 sky130_fd_sc_hd__xor2_1 _344_ (.A(BI),
    .B(B[3]),
    .X(_108_));
 sky130_fd_sc_hd__nand2_1 _345_ (.A(A[3]),
    .B(_108_),
    .Y(_109_));
 sky130_fd_sc_hd__xnor2_1 _346_ (.A(A[3]),
    .B(_108_),
    .Y(_110_));
 sky130_fd_sc_hd__xnor2_1 _347_ (.A(_107_),
    .B(_110_),
    .Y(Y[3]));
 sky130_fd_sc_hd__nor2_1 _348_ (.A(_106_),
    .B(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__o211ai_1 _349_ (.A1(A[3]),
    .A2(_108_),
    .B1(_105_),
    .C1(A[2]),
    .Y(_112_));
 sky130_fd_sc_hd__nand2_1 _350_ (.A(_109_),
    .B(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _351_ (.A1(_104_),
    .A2(_111_),
    .B1(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__xor2_1 _352_ (.A(BI),
    .B(B[4]),
    .X(_115_));
 sky130_fd_sc_hd__nand2_1 _353_ (.A(A[4]),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__xnor3_1 _354_ (.A(BI),
    .B(B[4]),
    .C(A[4]),
    .X(_117_));
 sky130_fd_sc_hd__xor2_1 _355_ (.A(_114_),
    .B(_117_),
    .X(Y[4]));
 sky130_fd_sc_hd__o21ai_0 _356_ (.A1(_114_),
    .A2(_117_),
    .B1(_116_),
    .Y(_118_));
 sky130_fd_sc_hd__xor2_1 _357_ (.A(BI),
    .B(B[5]),
    .X(_119_));
 sky130_fd_sc_hd__nand2_1 _358_ (.A(A[5]),
    .B(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__xnor3_1 _359_ (.A(BI),
    .B(B[5]),
    .C(A[5]),
    .X(_121_));
 sky130_fd_sc_hd__xnor2_1 _360_ (.A(_118_),
    .B(_121_),
    .Y(Y[5]));
 sky130_fd_sc_hd__nor2_1 _361_ (.A(_117_),
    .B(_121_),
    .Y(_122_));
 sky130_fd_sc_hd__or2_0 _362_ (.A(_117_),
    .B(_121_),
    .X(_123_));
 sky130_fd_sc_hd__a21oi_1 _363_ (.A1(_109_),
    .A2(_112_),
    .B1(_123_),
    .Y(_124_));
 sky130_fd_sc_hd__o21ai_0 _364_ (.A1(_116_),
    .A2(_121_),
    .B1(_120_),
    .Y(_125_));
 sky130_fd_sc_hd__nor3_1 _365_ (.A(_106_),
    .B(_110_),
    .C(_123_),
    .Y(_126_));
 sky130_fd_sc_hd__a211oi_1 _366_ (.A1(_104_),
    .A2(_126_),
    .B1(_125_),
    .C1(_124_),
    .Y(_127_));
 sky130_fd_sc_hd__xor2_1 _367_ (.A(BI),
    .B(B[6]),
    .X(_128_));
 sky130_fd_sc_hd__nand2_1 _368_ (.A(A[6]),
    .B(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__xnor2_1 _369_ (.A(A[6]),
    .B(_128_),
    .Y(_130_));
 sky130_fd_sc_hd__xor2_1 _370_ (.A(_127_),
    .B(_130_),
    .X(Y[6]));
 sky130_fd_sc_hd__o21ai_0 _371_ (.A1(_127_),
    .A2(_130_),
    .B1(_129_),
    .Y(_131_));
 sky130_fd_sc_hd__xor2_1 _372_ (.A(BI),
    .B(B[7]),
    .X(_132_));
 sky130_fd_sc_hd__nand2_1 _373_ (.A(A[7]),
    .B(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__xnor2_1 _374_ (.A(A[7]),
    .B(_132_),
    .Y(_134_));
 sky130_fd_sc_hd__xnor2_1 _375_ (.A(_131_),
    .B(_134_),
    .Y(Y[7]));
 sky130_fd_sc_hd__nor2_1 _376_ (.A(_130_),
    .B(_134_),
    .Y(_135_));
 sky130_fd_sc_hd__o21ai_0 _377_ (.A1(_129_),
    .A2(_134_),
    .B1(_133_),
    .Y(_136_));
 sky130_fd_sc_hd__a21oi_1 _378_ (.A1(_125_),
    .A2(_135_),
    .B1(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__nand2_1 _379_ (.A(_122_),
    .B(_135_),
    .Y(_138_));
 sky130_fd_sc_hd__o21ai_0 _380_ (.A1(_114_),
    .A2(_138_),
    .B1(_137_),
    .Y(_139_));
 sky130_fd_sc_hd__xor2_1 _381_ (.A(BI),
    .B(B[8]),
    .X(_140_));
 sky130_fd_sc_hd__xnor2_1 _382_ (.A(A[8]),
    .B(_140_),
    .Y(_141_));
 sky130_fd_sc_hd__xnor2_1 _383_ (.A(_139_),
    .B(_141_),
    .Y(Y[8]));
 sky130_fd_sc_hd__maj3_1 _384_ (.A(A[8]),
    .B(_139_),
    .C(_140_),
    .X(_142_));
 sky130_fd_sc_hd__xor2_1 _385_ (.A(BI),
    .B(B[9]),
    .X(_143_));
 sky130_fd_sc_hd__nand2_1 _386_ (.A(A[9]),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__xnor2_1 _387_ (.A(A[9]),
    .B(_143_),
    .Y(_145_));
 sky130_fd_sc_hd__xnor2_1 _388_ (.A(_142_),
    .B(_145_),
    .Y(Y[9]));
 sky130_fd_sc_hd__xor2_1 _389_ (.A(BI),
    .B(B[10]),
    .X(_146_));
 sky130_fd_sc_hd__nand2_1 _390_ (.A(A[10]),
    .B(_146_),
    .Y(_147_));
 sky130_fd_sc_hd__xnor3_1 _391_ (.A(BI),
    .B(B[10]),
    .C(A[10]),
    .X(_148_));
 sky130_fd_sc_hd__nor2_1 _392_ (.A(_141_),
    .B(_145_),
    .Y(_149_));
 sky130_fd_sc_hd__o211ai_1 _393_ (.A1(A[9]),
    .A2(_143_),
    .B1(_140_),
    .C1(A[8]),
    .Y(_150_));
 sky130_fd_sc_hd__nand2_1 _394_ (.A(_144_),
    .B(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__a21oi_1 _395_ (.A1(_136_),
    .A2(_149_),
    .B1(_151_),
    .Y(_152_));
 sky130_fd_sc_hd__nor4_1 _396_ (.A(_130_),
    .B(_134_),
    .C(_141_),
    .D(_145_),
    .Y(_153_));
 sky130_fd_sc_hd__o21ai_0 _397_ (.A1(_124_),
    .A2(_125_),
    .B1(_153_),
    .Y(_154_));
 sky130_fd_sc_hd__nand3_1 _398_ (.A(_104_),
    .B(_126_),
    .C(_153_),
    .Y(_155_));
 sky130_fd_sc_hd__nand3_1 _399_ (.A(_152_),
    .B(_154_),
    .C(_155_),
    .Y(_156_));
 sky130_fd_sc_hd__clkinv_1 _400_ (.A(_156_),
    .Y(_157_));
 sky130_fd_sc_hd__xnor2_1 _401_ (.A(_148_),
    .B(_156_),
    .Y(Y[10]));
 sky130_fd_sc_hd__o21ai_0 _402_ (.A1(_148_),
    .A2(_157_),
    .B1(_147_),
    .Y(_158_));
 sky130_fd_sc_hd__xor2_1 _403_ (.A(BI),
    .B(B[11]),
    .X(_159_));
 sky130_fd_sc_hd__nand2_1 _404_ (.A(A[11]),
    .B(_159_),
    .Y(_160_));
 sky130_fd_sc_hd__xnor3_1 _405_ (.A(BI),
    .B(B[11]),
    .C(A[11]),
    .X(_161_));
 sky130_fd_sc_hd__xnor2_1 _406_ (.A(_158_),
    .B(_161_),
    .Y(Y[11]));
 sky130_fd_sc_hd__nor2_1 _407_ (.A(_148_),
    .B(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__or2_0 _408_ (.A(_148_),
    .B(_161_),
    .X(_163_));
 sky130_fd_sc_hd__nand2_1 _409_ (.A(_149_),
    .B(_162_),
    .Y(_164_));
 sky130_fd_sc_hd__nand4_1 _410_ (.A(_122_),
    .B(_135_),
    .C(_149_),
    .D(_162_),
    .Y(_165_));
 sky130_fd_sc_hd__a21oi_1 _411_ (.A1(_144_),
    .A2(_150_),
    .B1(_163_),
    .Y(_166_));
 sky130_fd_sc_hd__o211ai_1 _412_ (.A1(A[11]),
    .A2(_159_),
    .B1(_146_),
    .C1(A[10]),
    .Y(_167_));
 sky130_fd_sc_hd__nand2_1 _413_ (.A(_160_),
    .B(_167_),
    .Y(_168_));
 sky130_fd_sc_hd__nor2_1 _414_ (.A(_166_),
    .B(_168_),
    .Y(_169_));
 sky130_fd_sc_hd__o221ai_1 _415_ (.A1(_137_),
    .A2(_164_),
    .B1(_165_),
    .B2(_114_),
    .C1(_169_),
    .Y(_170_));
 sky130_fd_sc_hd__xor2_1 _416_ (.A(BI),
    .B(B[12]),
    .X(_171_));
 sky130_fd_sc_hd__xnor3_1 _417_ (.A(BI),
    .B(B[12]),
    .C(A[12]),
    .X(_172_));
 sky130_fd_sc_hd__xnor2_1 _418_ (.A(_170_),
    .B(_172_),
    .Y(Y[12]));
 sky130_fd_sc_hd__maj3_1 _419_ (.A(A[12]),
    .B(_170_),
    .C(_171_),
    .X(_173_));
 sky130_fd_sc_hd__xor2_1 _420_ (.A(BI),
    .B(B[13]),
    .X(_174_));
 sky130_fd_sc_hd__nand2_1 _421_ (.A(A[13]),
    .B(_174_),
    .Y(_175_));
 sky130_fd_sc_hd__xnor3_1 _422_ (.A(BI),
    .B(B[13]),
    .C(A[13]),
    .X(_176_));
 sky130_fd_sc_hd__xnor2_1 _423_ (.A(_173_),
    .B(_176_),
    .Y(Y[13]));
 sky130_fd_sc_hd__nor2_1 _424_ (.A(_172_),
    .B(_176_),
    .Y(_177_));
 sky130_fd_sc_hd__or2_0 _425_ (.A(_172_),
    .B(_176_),
    .X(_178_));
 sky130_fd_sc_hd__nor2_1 _426_ (.A(_163_),
    .B(_178_),
    .Y(_179_));
 sky130_fd_sc_hd__nand2_1 _427_ (.A(_162_),
    .B(_177_),
    .Y(_180_));
 sky130_fd_sc_hd__nand2_1 _428_ (.A(_153_),
    .B(_179_),
    .Y(_181_));
 sky130_fd_sc_hd__a21oi_1 _429_ (.A1(_160_),
    .A2(_167_),
    .B1(_178_),
    .Y(_182_));
 sky130_fd_sc_hd__o211ai_1 _430_ (.A1(A[13]),
    .A2(_174_),
    .B1(_171_),
    .C1(A[12]),
    .Y(_183_));
 sky130_fd_sc_hd__nand2_1 _431_ (.A(_175_),
    .B(_183_),
    .Y(_184_));
 sky130_fd_sc_hd__nor2_1 _432_ (.A(_182_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__o221ai_1 _433_ (.A1(_152_),
    .A2(_180_),
    .B1(_181_),
    .B2(_127_),
    .C1(_185_),
    .Y(_186_));
 sky130_fd_sc_hd__xor2_1 _434_ (.A(BI),
    .B(B[14]),
    .X(_187_));
 sky130_fd_sc_hd__xnor3_1 _435_ (.A(BI),
    .B(B[14]),
    .C(A[14]),
    .X(_188_));
 sky130_fd_sc_hd__xnor2_1 _436_ (.A(_186_),
    .B(_188_),
    .Y(Y[14]));
 sky130_fd_sc_hd__maj3_1 _437_ (.A(A[14]),
    .B(_186_),
    .C(_187_),
    .X(_189_));
 sky130_fd_sc_hd__xor2_1 _438_ (.A(BI),
    .B(B[15]),
    .X(_190_));
 sky130_fd_sc_hd__nand2_1 _439_ (.A(A[15]),
    .B(_190_),
    .Y(_191_));
 sky130_fd_sc_hd__xnor3_1 _440_ (.A(BI),
    .B(B[15]),
    .C(A[15]),
    .X(_192_));
 sky130_fd_sc_hd__xnor2_1 _441_ (.A(_189_),
    .B(_192_),
    .Y(Y[15]));
 sky130_fd_sc_hd__nor2_1 _442_ (.A(_188_),
    .B(_192_),
    .Y(_193_));
 sky130_fd_sc_hd__a21boi_0 _443_ (.A1(_175_),
    .A2(_183_),
    .B1_N(_193_),
    .Y(_194_));
 sky130_fd_sc_hd__o211ai_1 _444_ (.A1(A[15]),
    .A2(_190_),
    .B1(_187_),
    .C1(A[14]),
    .Y(_195_));
 sky130_fd_sc_hd__nand2_1 _445_ (.A(_191_),
    .B(_195_),
    .Y(_196_));
 sky130_fd_sc_hd__nor2_1 _446_ (.A(_194_),
    .B(_196_),
    .Y(_197_));
 sky130_fd_sc_hd__nand2_1 _447_ (.A(_177_),
    .B(_193_),
    .Y(_198_));
 sky130_fd_sc_hd__o21bai_1 _448_ (.A1(_166_),
    .A2(_168_),
    .B1_N(_198_),
    .Y(_199_));
 sky130_fd_sc_hd__nand2_1 _449_ (.A(_197_),
    .B(_199_),
    .Y(_200_));
 sky130_fd_sc_hd__nor2_1 _450_ (.A(_164_),
    .B(_198_),
    .Y(_201_));
 sky130_fd_sc_hd__a21oi_1 _451_ (.A1(_139_),
    .A2(_201_),
    .B1(_200_),
    .Y(_202_));
 sky130_fd_sc_hd__xor2_1 _452_ (.A(BI),
    .B(B[16]),
    .X(_203_));
 sky130_fd_sc_hd__nand2_1 _453_ (.A(A[16]),
    .B(_203_),
    .Y(_204_));
 sky130_fd_sc_hd__xnor3_1 _454_ (.A(BI),
    .B(B[16]),
    .C(A[16]),
    .X(_205_));
 sky130_fd_sc_hd__xor2_1 _455_ (.A(_202_),
    .B(_205_),
    .X(Y[16]));
 sky130_fd_sc_hd__o21ai_0 _456_ (.A1(_202_),
    .A2(_205_),
    .B1(_204_),
    .Y(_206_));
 sky130_fd_sc_hd__xor2_1 _457_ (.A(BI),
    .B(B[17]),
    .X(_207_));
 sky130_fd_sc_hd__nand2_1 _458_ (.A(A[17]),
    .B(_207_),
    .Y(_208_));
 sky130_fd_sc_hd__xnor3_1 _459_ (.A(BI),
    .B(B[17]),
    .C(A[17]),
    .X(_209_));
 sky130_fd_sc_hd__xnor2_1 _460_ (.A(_206_),
    .B(_209_),
    .Y(Y[17]));
 sky130_fd_sc_hd__nor2_1 _461_ (.A(_205_),
    .B(_209_),
    .Y(_210_));
 sky130_fd_sc_hd__a21boi_0 _462_ (.A1(_191_),
    .A2(_195_),
    .B1_N(_210_),
    .Y(_211_));
 sky130_fd_sc_hd__o21ai_0 _463_ (.A1(_204_),
    .A2(_209_),
    .B1(_208_),
    .Y(_212_));
 sky130_fd_sc_hd__nor2_1 _464_ (.A(_211_),
    .B(_212_),
    .Y(_213_));
 sky130_fd_sc_hd__nand2_1 _465_ (.A(_193_),
    .B(_210_),
    .Y(_214_));
 sky130_fd_sc_hd__o21bai_1 _466_ (.A1(_182_),
    .A2(_184_),
    .B1_N(_214_),
    .Y(_215_));
 sky130_fd_sc_hd__nand2_1 _467_ (.A(_213_),
    .B(_215_),
    .Y(_216_));
 sky130_fd_sc_hd__nand3_1 _468_ (.A(_179_),
    .B(_193_),
    .C(_210_),
    .Y(_217_));
 sky130_fd_sc_hd__a31oi_1 _469_ (.A1(_152_),
    .A2(_154_),
    .A3(_155_),
    .B1(_217_),
    .Y(_218_));
endmodule
