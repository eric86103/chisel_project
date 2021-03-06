module final_norm_noSUB( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [8:0]  io_input_exp, // @[:@6.4]
  input  [27:0] io_PP_sum, // @[:@6.4]
  output [22:0] io_norm_sum, // @[:@6.4]
  output [7:0]  io_norm_exp, // @[:@6.4]
  output        io_sign // @[:@6.4]
);
  wire  POS_or_NEG; // @[norm.scala 14:32:@9.4]
  wire [27:0] _T_23; // @[norm.scala 18:51:@16.4]
  wire [28:0] _T_25; // @[norm.scala 18:62:@17.4]
  wire [27:0] _T_26; // @[norm.scala 18:62:@18.4]
  wire [27:0] unsign_sum; // @[norm.scala 18:22:@19.4]
  wire  _T_60; // @[norm.scala 22:42:@22.4]
  wire  _T_64; // @[norm.scala 22:53:@24.4]
  wire  _T_65; // @[norm.scala 22:73:@25.4]
  wire  leading_vector_26; // @[norm.scala 22:61:@27.4]
  wire [1:0] _T_72; // @[norm.scala 23:41:@30.4]
  wire  _T_74; // @[norm.scala 23:50:@31.4]
  wire  _T_76; // @[norm.scala 23:54:@32.4]
  wire  _T_77; // @[norm.scala 23:74:@33.4]
  wire  leading_vector_25; // @[norm.scala 23:62:@35.4]
  wire [2:0] _T_84; // @[norm.scala 24:41:@38.4]
  wire  _T_86; // @[norm.scala 24:50:@39.4]
  wire  _T_88; // @[norm.scala 24:54:@40.4]
  wire  _T_89; // @[norm.scala 24:74:@41.4]
  wire  leading_vector_24; // @[norm.scala 24:62:@43.4]
  wire [3:0] _T_96; // @[norm.scala 25:41:@46.4]
  wire  _T_98; // @[norm.scala 25:50:@47.4]
  wire  _T_100; // @[norm.scala 25:53:@48.4]
  wire  _T_101; // @[norm.scala 25:73:@49.4]
  wire  leading_vector_23; // @[norm.scala 25:61:@51.4]
  wire [4:0] _T_108; // @[norm.scala 26:41:@54.4]
  wire  _T_110; // @[norm.scala 26:50:@55.4]
  wire  _T_112; // @[norm.scala 26:53:@56.4]
  wire  _T_113; // @[norm.scala 26:73:@57.4]
  wire  leading_vector_22; // @[norm.scala 26:61:@59.4]
  wire [5:0] _T_120; // @[norm.scala 27:41:@62.4]
  wire  _T_122; // @[norm.scala 27:50:@63.4]
  wire  _T_124; // @[norm.scala 27:53:@64.4]
  wire  _T_125; // @[norm.scala 27:73:@65.4]
  wire  leading_vector_21; // @[norm.scala 27:61:@67.4]
  wire [6:0] _T_132; // @[norm.scala 28:41:@70.4]
  wire  _T_134; // @[norm.scala 28:50:@71.4]
  wire  _T_136; // @[norm.scala 28:54:@72.4]
  wire  _T_137; // @[norm.scala 28:74:@73.4]
  wire  leading_vector_20; // @[norm.scala 28:62:@75.4]
  wire [7:0] _T_144; // @[norm.scala 29:41:@78.4]
  wire  _T_146; // @[norm.scala 29:50:@79.4]
  wire  _T_148; // @[norm.scala 29:54:@80.4]
  wire  _T_149; // @[norm.scala 29:74:@81.4]
  wire  leading_vector_19; // @[norm.scala 29:62:@83.4]
  wire [8:0] _T_156; // @[norm.scala 30:41:@86.4]
  wire  _T_158; // @[norm.scala 30:50:@87.4]
  wire  _T_160; // @[norm.scala 30:54:@88.4]
  wire  _T_161; // @[norm.scala 30:74:@89.4]
  wire  leading_vector_18; // @[norm.scala 30:62:@91.4]
  wire [9:0] _T_168; // @[norm.scala 31:41:@94.4]
  wire  _T_170; // @[norm.scala 31:50:@95.4]
  wire  _T_172; // @[norm.scala 31:54:@96.4]
  wire  _T_173; // @[norm.scala 31:74:@97.4]
  wire  leading_vector_17; // @[norm.scala 31:62:@99.4]
  wire [10:0] _T_180; // @[norm.scala 32:41:@102.4]
  wire  _T_182; // @[norm.scala 32:50:@103.4]
  wire  _T_184; // @[norm.scala 32:54:@104.4]
  wire  _T_185; // @[norm.scala 32:74:@105.4]
  wire  leading_vector_16; // @[norm.scala 32:62:@107.4]
  wire [11:0] _T_192; // @[norm.scala 34:41:@110.4]
  wire  _T_194; // @[norm.scala 34:50:@111.4]
  wire  _T_196; // @[norm.scala 34:54:@112.4]
  wire  _T_197; // @[norm.scala 34:74:@113.4]
  wire  leading_vector_15; // @[norm.scala 34:62:@115.4]
  wire [12:0] _T_204; // @[norm.scala 35:41:@118.4]
  wire  _T_206; // @[norm.scala 35:50:@119.4]
  wire  _T_208; // @[norm.scala 35:54:@120.4]
  wire  _T_209; // @[norm.scala 35:74:@121.4]
  wire  leading_vector_14; // @[norm.scala 35:62:@123.4]
  wire [13:0] _T_216; // @[norm.scala 36:41:@126.4]
  wire  _T_218; // @[norm.scala 36:50:@127.4]
  wire  _T_220; // @[norm.scala 36:54:@128.4]
  wire  _T_221; // @[norm.scala 36:74:@129.4]
  wire  leading_vector_13; // @[norm.scala 36:62:@131.4]
  wire [14:0] _T_228; // @[norm.scala 37:41:@134.4]
  wire  _T_230; // @[norm.scala 37:50:@135.4]
  wire  _T_232; // @[norm.scala 37:54:@136.4]
  wire  _T_233; // @[norm.scala 37:74:@137.4]
  wire  leading_vector_12; // @[norm.scala 37:62:@139.4]
  wire [15:0] _T_240; // @[norm.scala 38:41:@142.4]
  wire  _T_242; // @[norm.scala 38:50:@143.4]
  wire  _T_244; // @[norm.scala 38:54:@144.4]
  wire  _T_245; // @[norm.scala 38:74:@145.4]
  wire  leading_vector_11; // @[norm.scala 38:62:@147.4]
  wire [16:0] _T_252; // @[norm.scala 40:41:@150.4]
  wire  _T_254; // @[norm.scala 40:50:@151.4]
  wire  _T_256; // @[norm.scala 40:54:@152.4]
  wire  _T_257; // @[norm.scala 40:74:@153.4]
  wire  leading_vector_10; // @[norm.scala 40:62:@155.4]
  wire [17:0] _T_264; // @[norm.scala 41:40:@158.4]
  wire  _T_266; // @[norm.scala 41:49:@159.4]
  wire  _T_268; // @[norm.scala 41:53:@160.4]
  wire  _T_269; // @[norm.scala 41:73:@161.4]
  wire  leading_vector_9; // @[norm.scala 41:61:@163.4]
  wire [18:0] _T_276; // @[norm.scala 42:40:@166.4]
  wire  _T_278; // @[norm.scala 42:48:@167.4]
  wire  _T_280; // @[norm.scala 42:52:@168.4]
  wire  _T_281; // @[norm.scala 42:72:@169.4]
  wire  leading_vector_8; // @[norm.scala 42:60:@171.4]
  wire [19:0] _T_288; // @[norm.scala 43:40:@174.4]
  wire  _T_290; // @[norm.scala 43:48:@175.4]
  wire  _T_292; // @[norm.scala 43:52:@176.4]
  wire  _T_293; // @[norm.scala 43:72:@177.4]
  wire  leading_vector_7; // @[norm.scala 43:60:@179.4]
  wire [20:0] _T_300; // @[norm.scala 44:40:@182.4]
  wire  _T_302; // @[norm.scala 44:48:@183.4]
  wire  _T_304; // @[norm.scala 44:52:@184.4]
  wire  _T_305; // @[norm.scala 44:72:@185.4]
  wire  leading_vector_6; // @[norm.scala 44:60:@187.4]
  wire [21:0] _T_312; // @[norm.scala 46:40:@190.4]
  wire  _T_314; // @[norm.scala 46:48:@191.4]
  wire  _T_316; // @[norm.scala 46:52:@192.4]
  wire  _T_317; // @[norm.scala 46:72:@193.4]
  wire  leading_vector_5; // @[norm.scala 46:60:@195.4]
  wire [22:0] _T_324; // @[norm.scala 47:40:@198.4]
  wire  _T_326; // @[norm.scala 47:48:@199.4]
  wire  _T_328; // @[norm.scala 47:52:@200.4]
  wire  _T_329; // @[norm.scala 47:72:@201.4]
  wire  leading_vector_4; // @[norm.scala 47:60:@203.4]
  wire [23:0] _T_336; // @[norm.scala 48:40:@206.4]
  wire  _T_338; // @[norm.scala 48:48:@207.4]
  wire  _T_340; // @[norm.scala 48:52:@208.4]
  wire  _T_341; // @[norm.scala 48:72:@209.4]
  wire  leading_vector_3; // @[norm.scala 48:60:@211.4]
  wire [24:0] _T_348; // @[norm.scala 49:40:@214.4]
  wire  _T_350; // @[norm.scala 49:48:@215.4]
  wire  _T_352; // @[norm.scala 49:52:@216.4]
  wire  _T_353; // @[norm.scala 49:72:@217.4]
  wire  leading_vector_2; // @[norm.scala 49:60:@219.4]
  wire [25:0] _T_360; // @[norm.scala 50:40:@222.4]
  wire  _T_362; // @[norm.scala 50:48:@223.4]
  wire  _T_364; // @[norm.scala 50:52:@224.4]
  wire  _T_365; // @[norm.scala 50:72:@225.4]
  wire  leading_vector_1; // @[norm.scala 50:60:@227.4]
  wire [26:0] _T_372; // @[norm.scala 51:40:@230.4]
  wire  _T_374; // @[norm.scala 51:48:@231.4]
  wire  _T_376; // @[norm.scala 51:52:@232.4]
  wire  _T_377; // @[norm.scala 51:72:@233.4]
  wire  leading_vector_0; // @[norm.scala 51:60:@235.4]
  wire [22:0] _T_386; // @[norm.scala 54:34:@240.6]
  wire [22:0] _T_390; // @[norm.scala 57:34:@247.8]
  wire [22:0] _T_394; // @[norm.scala 60:34:@254.10]
  wire [22:0] _T_398; // @[norm.scala 63:34:@261.12]
  wire [22:0] _T_402; // @[norm.scala 66:34:@268.14]
  wire [21:0] _T_407; // @[norm.scala 69:47:@275.16]
  wire [22:0] _T_408; // @[Cat.scala 30:58:@276.16]
  wire [20:0] _T_412; // @[norm.scala 72:34:@283.18]
  wire [19:0] _T_416; // @[norm.scala 75:34:@290.20]
  wire [18:0] _T_420; // @[norm.scala 78:34:@297.22]
  wire [17:0] _T_424; // @[norm.scala 81:34:@304.24]
  wire [16:0] _T_428; // @[norm.scala 84:34:@311.26]
  wire [15:0] _T_432; // @[norm.scala 87:34:@318.28]
  wire [14:0] _T_436; // @[norm.scala 90:34:@325.30]
  wire [13:0] _T_440; // @[norm.scala 93:34:@332.32]
  wire [12:0] _T_444; // @[norm.scala 96:34:@339.34]
  wire [11:0] _T_448; // @[norm.scala 99:34:@346.36]
  wire [10:0] _T_452; // @[norm.scala 102:34:@353.38]
  wire [9:0] _T_456; // @[norm.scala 105:34:@360.40]
  wire [8:0] _T_460; // @[norm.scala 108:34:@367.42]
  wire [7:0] _T_464; // @[norm.scala 111:34:@374.44]
  wire [6:0] _T_468; // @[norm.scala 114:34:@381.46]
  wire [5:0] _T_472; // @[norm.scala 117:34:@388.48]
  wire [4:0] _T_476; // @[norm.scala 120:34:@395.50]
  wire [3:0] _T_480; // @[norm.scala 123:34:@402.52]
  wire [2:0] _T_484; // @[norm.scala 126:34:@409.54]
  wire [1:0] _T_488; // @[norm.scala 129:34:@416.56]
  wire [22:0] _GEN_0; // @[norm.scala 131:43:@422.56]
  wire [7:0] _GEN_1; // @[norm.scala 131:43:@422.56]
  wire [22:0] _GEN_2; // @[norm.scala 128:43:@415.54]
  wire [7:0] _GEN_3; // @[norm.scala 128:43:@415.54]
  wire [22:0] _GEN_4; // @[norm.scala 125:43:@408.52]
  wire [7:0] _GEN_5; // @[norm.scala 125:43:@408.52]
  wire [22:0] _GEN_6; // @[norm.scala 122:43:@401.50]
  wire [7:0] _GEN_7; // @[norm.scala 122:43:@401.50]
  wire [22:0] _GEN_8; // @[norm.scala 119:43:@394.48]
  wire [7:0] _GEN_9; // @[norm.scala 119:43:@394.48]
  wire [22:0] _GEN_10; // @[norm.scala 116:43:@387.46]
  wire [7:0] _GEN_11; // @[norm.scala 116:43:@387.46]
  wire [22:0] _GEN_12; // @[norm.scala 113:43:@380.44]
  wire [7:0] _GEN_13; // @[norm.scala 113:43:@380.44]
  wire [22:0] _GEN_14; // @[norm.scala 110:43:@373.42]
  wire [7:0] _GEN_15; // @[norm.scala 110:43:@373.42]
  wire [22:0] _GEN_16; // @[norm.scala 107:43:@366.40]
  wire [7:0] _GEN_17; // @[norm.scala 107:43:@366.40]
  wire [22:0] _GEN_18; // @[norm.scala 104:43:@359.38]
  wire [7:0] _GEN_19; // @[norm.scala 104:43:@359.38]
  wire [22:0] _GEN_20; // @[norm.scala 101:44:@352.36]
  wire [7:0] _GEN_21; // @[norm.scala 101:44:@352.36]
  wire [22:0] _GEN_22; // @[norm.scala 98:44:@345.34]
  wire [7:0] _GEN_23; // @[norm.scala 98:44:@345.34]
  wire [22:0] _GEN_24; // @[norm.scala 95:44:@338.32]
  wire [7:0] _GEN_25; // @[norm.scala 95:44:@338.32]
  wire [22:0] _GEN_26; // @[norm.scala 92:44:@331.30]
  wire [7:0] _GEN_27; // @[norm.scala 92:44:@331.30]
  wire [22:0] _GEN_28; // @[norm.scala 89:44:@324.28]
  wire [7:0] _GEN_29; // @[norm.scala 89:44:@324.28]
  wire [22:0] _GEN_30; // @[norm.scala 86:44:@317.26]
  wire [7:0] _GEN_31; // @[norm.scala 86:44:@317.26]
  wire [22:0] _GEN_32; // @[norm.scala 83:44:@310.24]
  wire [7:0] _GEN_33; // @[norm.scala 83:44:@310.24]
  wire [22:0] _GEN_34; // @[norm.scala 80:44:@303.22]
  wire [7:0] _GEN_35; // @[norm.scala 80:44:@303.22]
  wire [22:0] _GEN_36; // @[norm.scala 77:44:@296.20]
  wire [7:0] _GEN_37; // @[norm.scala 77:44:@296.20]
  wire [22:0] _GEN_38; // @[norm.scala 74:44:@289.18]
  wire [7:0] _GEN_39; // @[norm.scala 74:44:@289.18]
  wire [22:0] _GEN_40; // @[norm.scala 71:44:@282.16]
  wire [7:0] _GEN_41; // @[norm.scala 71:44:@282.16]
  wire [22:0] _GEN_42; // @[norm.scala 68:44:@274.14]
  wire [7:0] _GEN_43; // @[norm.scala 68:44:@274.14]
  wire [22:0] _GEN_44; // @[norm.scala 65:44:@267.12]
  wire [7:0] _GEN_45; // @[norm.scala 65:44:@267.12]
  wire [22:0] _GEN_46; // @[norm.scala 62:44:@260.10]
  wire [7:0] _GEN_47; // @[norm.scala 62:44:@260.10]
  wire [22:0] _GEN_48; // @[norm.scala 59:45:@253.8]
  wire [7:0] _GEN_49; // @[norm.scala 59:45:@253.8]
  wire [22:0] _GEN_50; // @[norm.scala 56:44:@246.6]
  wire [7:0] _GEN_51; // @[norm.scala 56:44:@246.6]
  assign POS_or_NEG = io_PP_sum[27]; // @[norm.scala 14:32:@9.4]
  assign _T_23 = ~ io_PP_sum; // @[norm.scala 18:51:@16.4]
  assign _T_25 = _T_23 + 28'h1; // @[norm.scala 18:62:@17.4]
  assign _T_26 = _T_25[27:0]; // @[norm.scala 18:62:@18.4]
  assign unsign_sum = POS_or_NEG ? io_PP_sum : _T_26; // @[norm.scala 18:22:@19.4]
  assign _T_60 = unsign_sum[27]; // @[norm.scala 22:42:@22.4]
  assign _T_64 = _T_60 == 1'h0; // @[norm.scala 22:53:@24.4]
  assign _T_65 = unsign_sum[26]; // @[norm.scala 22:73:@25.4]
  assign leading_vector_26 = _T_64 & _T_65; // @[norm.scala 22:61:@27.4]
  assign _T_72 = unsign_sum[27:26]; // @[norm.scala 23:41:@30.4]
  assign _T_74 = _T_72 != 2'h0; // @[norm.scala 23:50:@31.4]
  assign _T_76 = _T_74 == 1'h0; // @[norm.scala 23:54:@32.4]
  assign _T_77 = unsign_sum[25]; // @[norm.scala 23:74:@33.4]
  assign leading_vector_25 = _T_76 & _T_77; // @[norm.scala 23:62:@35.4]
  assign _T_84 = unsign_sum[27:25]; // @[norm.scala 24:41:@38.4]
  assign _T_86 = _T_84 != 3'h0; // @[norm.scala 24:50:@39.4]
  assign _T_88 = _T_86 == 1'h0; // @[norm.scala 24:54:@40.4]
  assign _T_89 = unsign_sum[24]; // @[norm.scala 24:74:@41.4]
  assign leading_vector_24 = _T_88 & _T_89; // @[norm.scala 24:62:@43.4]
  assign _T_96 = unsign_sum[27:24]; // @[norm.scala 25:41:@46.4]
  assign _T_98 = _T_96 != 4'h0; // @[norm.scala 25:50:@47.4]
  assign _T_100 = _T_98 == 1'h0; // @[norm.scala 25:53:@48.4]
  assign _T_101 = unsign_sum[23]; // @[norm.scala 25:73:@49.4]
  assign leading_vector_23 = _T_100 & _T_101; // @[norm.scala 25:61:@51.4]
  assign _T_108 = unsign_sum[27:23]; // @[norm.scala 26:41:@54.4]
  assign _T_110 = _T_108 != 5'h0; // @[norm.scala 26:50:@55.4]
  assign _T_112 = _T_110 == 1'h0; // @[norm.scala 26:53:@56.4]
  assign _T_113 = unsign_sum[22]; // @[norm.scala 26:73:@57.4]
  assign leading_vector_22 = _T_112 & _T_113; // @[norm.scala 26:61:@59.4]
  assign _T_120 = unsign_sum[27:22]; // @[norm.scala 27:41:@62.4]
  assign _T_122 = _T_120 != 6'h0; // @[norm.scala 27:50:@63.4]
  assign _T_124 = _T_122 == 1'h0; // @[norm.scala 27:53:@64.4]
  assign _T_125 = unsign_sum[21]; // @[norm.scala 27:73:@65.4]
  assign leading_vector_21 = _T_124 & _T_125; // @[norm.scala 27:61:@67.4]
  assign _T_132 = unsign_sum[27:21]; // @[norm.scala 28:41:@70.4]
  assign _T_134 = _T_132 != 7'h0; // @[norm.scala 28:50:@71.4]
  assign _T_136 = _T_134 == 1'h0; // @[norm.scala 28:54:@72.4]
  assign _T_137 = unsign_sum[20]; // @[norm.scala 28:74:@73.4]
  assign leading_vector_20 = _T_136 & _T_137; // @[norm.scala 28:62:@75.4]
  assign _T_144 = unsign_sum[27:20]; // @[norm.scala 29:41:@78.4]
  assign _T_146 = _T_144 != 8'h0; // @[norm.scala 29:50:@79.4]
  assign _T_148 = _T_146 == 1'h0; // @[norm.scala 29:54:@80.4]
  assign _T_149 = unsign_sum[19]; // @[norm.scala 29:74:@81.4]
  assign leading_vector_19 = _T_148 & _T_149; // @[norm.scala 29:62:@83.4]
  assign _T_156 = unsign_sum[27:19]; // @[norm.scala 30:41:@86.4]
  assign _T_158 = _T_156 != 9'h0; // @[norm.scala 30:50:@87.4]
  assign _T_160 = _T_158 == 1'h0; // @[norm.scala 30:54:@88.4]
  assign _T_161 = unsign_sum[18]; // @[norm.scala 30:74:@89.4]
  assign leading_vector_18 = _T_160 & _T_161; // @[norm.scala 30:62:@91.4]
  assign _T_168 = unsign_sum[27:18]; // @[norm.scala 31:41:@94.4]
  assign _T_170 = _T_168 != 10'h0; // @[norm.scala 31:50:@95.4]
  assign _T_172 = _T_170 == 1'h0; // @[norm.scala 31:54:@96.4]
  assign _T_173 = unsign_sum[17]; // @[norm.scala 31:74:@97.4]
  assign leading_vector_17 = _T_172 & _T_173; // @[norm.scala 31:62:@99.4]
  assign _T_180 = unsign_sum[27:17]; // @[norm.scala 32:41:@102.4]
  assign _T_182 = _T_180 != 11'h0; // @[norm.scala 32:50:@103.4]
  assign _T_184 = _T_182 == 1'h0; // @[norm.scala 32:54:@104.4]
  assign _T_185 = unsign_sum[16]; // @[norm.scala 32:74:@105.4]
  assign leading_vector_16 = _T_184 & _T_185; // @[norm.scala 32:62:@107.4]
  assign _T_192 = unsign_sum[27:16]; // @[norm.scala 34:41:@110.4]
  assign _T_194 = _T_192 != 12'h0; // @[norm.scala 34:50:@111.4]
  assign _T_196 = _T_194 == 1'h0; // @[norm.scala 34:54:@112.4]
  assign _T_197 = unsign_sum[15]; // @[norm.scala 34:74:@113.4]
  assign leading_vector_15 = _T_196 & _T_197; // @[norm.scala 34:62:@115.4]
  assign _T_204 = unsign_sum[27:15]; // @[norm.scala 35:41:@118.4]
  assign _T_206 = _T_204 != 13'h0; // @[norm.scala 35:50:@119.4]
  assign _T_208 = _T_206 == 1'h0; // @[norm.scala 35:54:@120.4]
  assign _T_209 = unsign_sum[14]; // @[norm.scala 35:74:@121.4]
  assign leading_vector_14 = _T_208 & _T_209; // @[norm.scala 35:62:@123.4]
  assign _T_216 = unsign_sum[27:14]; // @[norm.scala 36:41:@126.4]
  assign _T_218 = _T_216 != 14'h0; // @[norm.scala 36:50:@127.4]
  assign _T_220 = _T_218 == 1'h0; // @[norm.scala 36:54:@128.4]
  assign _T_221 = unsign_sum[13]; // @[norm.scala 36:74:@129.4]
  assign leading_vector_13 = _T_220 & _T_221; // @[norm.scala 36:62:@131.4]
  assign _T_228 = unsign_sum[27:13]; // @[norm.scala 37:41:@134.4]
  assign _T_230 = _T_228 != 15'h0; // @[norm.scala 37:50:@135.4]
  assign _T_232 = _T_230 == 1'h0; // @[norm.scala 37:54:@136.4]
  assign _T_233 = unsign_sum[12]; // @[norm.scala 37:74:@137.4]
  assign leading_vector_12 = _T_232 & _T_233; // @[norm.scala 37:62:@139.4]
  assign _T_240 = unsign_sum[27:12]; // @[norm.scala 38:41:@142.4]
  assign _T_242 = _T_240 != 16'h0; // @[norm.scala 38:50:@143.4]
  assign _T_244 = _T_242 == 1'h0; // @[norm.scala 38:54:@144.4]
  assign _T_245 = unsign_sum[11]; // @[norm.scala 38:74:@145.4]
  assign leading_vector_11 = _T_244 & _T_245; // @[norm.scala 38:62:@147.4]
  assign _T_252 = unsign_sum[27:11]; // @[norm.scala 40:41:@150.4]
  assign _T_254 = _T_252 != 17'h0; // @[norm.scala 40:50:@151.4]
  assign _T_256 = _T_254 == 1'h0; // @[norm.scala 40:54:@152.4]
  assign _T_257 = unsign_sum[10]; // @[norm.scala 40:74:@153.4]
  assign leading_vector_10 = _T_256 & _T_257; // @[norm.scala 40:62:@155.4]
  assign _T_264 = unsign_sum[27:10]; // @[norm.scala 41:40:@158.4]
  assign _T_266 = _T_264 != 18'h0; // @[norm.scala 41:49:@159.4]
  assign _T_268 = _T_266 == 1'h0; // @[norm.scala 41:53:@160.4]
  assign _T_269 = unsign_sum[9]; // @[norm.scala 41:73:@161.4]
  assign leading_vector_9 = _T_268 & _T_269; // @[norm.scala 41:61:@163.4]
  assign _T_276 = unsign_sum[27:9]; // @[norm.scala 42:40:@166.4]
  assign _T_278 = _T_276 != 19'h0; // @[norm.scala 42:48:@167.4]
  assign _T_280 = _T_278 == 1'h0; // @[norm.scala 42:52:@168.4]
  assign _T_281 = unsign_sum[8]; // @[norm.scala 42:72:@169.4]
  assign leading_vector_8 = _T_280 & _T_281; // @[norm.scala 42:60:@171.4]
  assign _T_288 = unsign_sum[27:8]; // @[norm.scala 43:40:@174.4]
  assign _T_290 = _T_288 != 20'h0; // @[norm.scala 43:48:@175.4]
  assign _T_292 = _T_290 == 1'h0; // @[norm.scala 43:52:@176.4]
  assign _T_293 = unsign_sum[7]; // @[norm.scala 43:72:@177.4]
  assign leading_vector_7 = _T_292 & _T_293; // @[norm.scala 43:60:@179.4]
  assign _T_300 = unsign_sum[27:7]; // @[norm.scala 44:40:@182.4]
  assign _T_302 = _T_300 != 21'h0; // @[norm.scala 44:48:@183.4]
  assign _T_304 = _T_302 == 1'h0; // @[norm.scala 44:52:@184.4]
  assign _T_305 = unsign_sum[6]; // @[norm.scala 44:72:@185.4]
  assign leading_vector_6 = _T_304 & _T_305; // @[norm.scala 44:60:@187.4]
  assign _T_312 = unsign_sum[27:6]; // @[norm.scala 46:40:@190.4]
  assign _T_314 = _T_312 != 22'h0; // @[norm.scala 46:48:@191.4]
  assign _T_316 = _T_314 == 1'h0; // @[norm.scala 46:52:@192.4]
  assign _T_317 = unsign_sum[5]; // @[norm.scala 46:72:@193.4]
  assign leading_vector_5 = _T_316 & _T_317; // @[norm.scala 46:60:@195.4]
  assign _T_324 = unsign_sum[27:5]; // @[norm.scala 47:40:@198.4]
  assign _T_326 = _T_324 != 23'h0; // @[norm.scala 47:48:@199.4]
  assign _T_328 = _T_326 == 1'h0; // @[norm.scala 47:52:@200.4]
  assign _T_329 = unsign_sum[4]; // @[norm.scala 47:72:@201.4]
  assign leading_vector_4 = _T_328 & _T_329; // @[norm.scala 47:60:@203.4]
  assign _T_336 = unsign_sum[27:4]; // @[norm.scala 48:40:@206.4]
  assign _T_338 = _T_336 != 24'h0; // @[norm.scala 48:48:@207.4]
  assign _T_340 = _T_338 == 1'h0; // @[norm.scala 48:52:@208.4]
  assign _T_341 = unsign_sum[3]; // @[norm.scala 48:72:@209.4]
  assign leading_vector_3 = _T_340 & _T_341; // @[norm.scala 48:60:@211.4]
  assign _T_348 = unsign_sum[27:3]; // @[norm.scala 49:40:@214.4]
  assign _T_350 = _T_348 != 25'h0; // @[norm.scala 49:48:@215.4]
  assign _T_352 = _T_350 == 1'h0; // @[norm.scala 49:52:@216.4]
  assign _T_353 = unsign_sum[2]; // @[norm.scala 49:72:@217.4]
  assign leading_vector_2 = _T_352 & _T_353; // @[norm.scala 49:60:@219.4]
  assign _T_360 = unsign_sum[27:2]; // @[norm.scala 50:40:@222.4]
  assign _T_362 = _T_360 != 26'h0; // @[norm.scala 50:48:@223.4]
  assign _T_364 = _T_362 == 1'h0; // @[norm.scala 50:52:@224.4]
  assign _T_365 = unsign_sum[1]; // @[norm.scala 50:72:@225.4]
  assign leading_vector_1 = _T_364 & _T_365; // @[norm.scala 50:60:@227.4]
  assign _T_372 = unsign_sum[27:1]; // @[norm.scala 51:40:@230.4]
  assign _T_374 = _T_372 != 27'h0; // @[norm.scala 51:48:@231.4]
  assign _T_376 = _T_374 == 1'h0; // @[norm.scala 51:52:@232.4]
  assign _T_377 = unsign_sum[0]; // @[norm.scala 51:72:@233.4]
  assign leading_vector_0 = _T_376 & _T_377; // @[norm.scala 51:60:@235.4]
  assign _T_386 = unsign_sum[26:4]; // @[norm.scala 54:34:@240.6]
  assign _T_390 = unsign_sum[25:3]; // @[norm.scala 57:34:@247.8]
  assign _T_394 = unsign_sum[24:2]; // @[norm.scala 60:34:@254.10]
  assign _T_398 = unsign_sum[23:1]; // @[norm.scala 63:34:@261.12]
  assign _T_402 = unsign_sum[22:0]; // @[norm.scala 66:34:@268.14]
  assign _T_407 = unsign_sum[21:0]; // @[norm.scala 69:47:@275.16]
  assign _T_408 = {1'h0,_T_407}; // @[Cat.scala 30:58:@276.16]
  assign _T_412 = unsign_sum[20:0]; // @[norm.scala 72:34:@283.18]
  assign _T_416 = unsign_sum[19:0]; // @[norm.scala 75:34:@290.20]
  assign _T_420 = unsign_sum[18:0]; // @[norm.scala 78:34:@297.22]
  assign _T_424 = unsign_sum[17:0]; // @[norm.scala 81:34:@304.24]
  assign _T_428 = unsign_sum[16:0]; // @[norm.scala 84:34:@311.26]
  assign _T_432 = unsign_sum[15:0]; // @[norm.scala 87:34:@318.28]
  assign _T_436 = unsign_sum[14:0]; // @[norm.scala 90:34:@325.30]
  assign _T_440 = unsign_sum[13:0]; // @[norm.scala 93:34:@332.32]
  assign _T_444 = unsign_sum[12:0]; // @[norm.scala 96:34:@339.34]
  assign _T_448 = unsign_sum[11:0]; // @[norm.scala 99:34:@346.36]
  assign _T_452 = unsign_sum[10:0]; // @[norm.scala 102:34:@353.38]
  assign _T_456 = unsign_sum[9:0]; // @[norm.scala 105:34:@360.40]
  assign _T_460 = unsign_sum[8:0]; // @[norm.scala 108:34:@367.42]
  assign _T_464 = unsign_sum[7:0]; // @[norm.scala 111:34:@374.44]
  assign _T_468 = unsign_sum[6:0]; // @[norm.scala 114:34:@381.46]
  assign _T_472 = unsign_sum[5:0]; // @[norm.scala 117:34:@388.48]
  assign _T_476 = unsign_sum[4:0]; // @[norm.scala 120:34:@395.50]
  assign _T_480 = unsign_sum[3:0]; // @[norm.scala 123:34:@402.52]
  assign _T_484 = unsign_sum[2:0]; // @[norm.scala 126:34:@409.54]
  assign _T_488 = unsign_sum[1:0]; // @[norm.scala 129:34:@416.56]
  assign _GEN_0 = leading_vector_0 ? {{22'd0}, _T_377} : 23'h0; // @[norm.scala 131:43:@422.56]
  assign _GEN_1 = leading_vector_0 ? 8'h19 : 8'h0; // @[norm.scala 131:43:@422.56]
  assign _GEN_2 = leading_vector_1 ? {{21'd0}, _T_488} : _GEN_0; // @[norm.scala 128:43:@415.54]
  assign _GEN_3 = leading_vector_1 ? 8'h18 : _GEN_1; // @[norm.scala 128:43:@415.54]
  assign _GEN_4 = leading_vector_2 ? {{20'd0}, _T_484} : _GEN_2; // @[norm.scala 125:43:@408.52]
  assign _GEN_5 = leading_vector_2 ? 8'h17 : _GEN_3; // @[norm.scala 125:43:@408.52]
  assign _GEN_6 = leading_vector_3 ? {{19'd0}, _T_480} : _GEN_4; // @[norm.scala 122:43:@401.50]
  assign _GEN_7 = leading_vector_3 ? 8'h16 : _GEN_5; // @[norm.scala 122:43:@401.50]
  assign _GEN_8 = leading_vector_4 ? {{18'd0}, _T_476} : _GEN_6; // @[norm.scala 119:43:@394.48]
  assign _GEN_9 = leading_vector_4 ? 8'h15 : _GEN_7; // @[norm.scala 119:43:@394.48]
  assign _GEN_10 = leading_vector_5 ? {{17'd0}, _T_472} : _GEN_8; // @[norm.scala 116:43:@387.46]
  assign _GEN_11 = leading_vector_5 ? 8'h14 : _GEN_9; // @[norm.scala 116:43:@387.46]
  assign _GEN_12 = leading_vector_6 ? {{16'd0}, _T_468} : _GEN_10; // @[norm.scala 113:43:@380.44]
  assign _GEN_13 = leading_vector_6 ? 8'h13 : _GEN_11; // @[norm.scala 113:43:@380.44]
  assign _GEN_14 = leading_vector_7 ? {{15'd0}, _T_464} : _GEN_12; // @[norm.scala 110:43:@373.42]
  assign _GEN_15 = leading_vector_7 ? 8'h12 : _GEN_13; // @[norm.scala 110:43:@373.42]
  assign _GEN_16 = leading_vector_8 ? {{14'd0}, _T_460} : _GEN_14; // @[norm.scala 107:43:@366.40]
  assign _GEN_17 = leading_vector_8 ? 8'h11 : _GEN_15; // @[norm.scala 107:43:@366.40]
  assign _GEN_18 = leading_vector_9 ? {{13'd0}, _T_456} : _GEN_16; // @[norm.scala 104:43:@359.38]
  assign _GEN_19 = leading_vector_9 ? 8'h10 : _GEN_17; // @[norm.scala 104:43:@359.38]
  assign _GEN_20 = leading_vector_10 ? {{12'd0}, _T_452} : _GEN_18; // @[norm.scala 101:44:@352.36]
  assign _GEN_21 = leading_vector_10 ? 8'hf : _GEN_19; // @[norm.scala 101:44:@352.36]
  assign _GEN_22 = leading_vector_11 ? {{11'd0}, _T_448} : _GEN_20; // @[norm.scala 98:44:@345.34]
  assign _GEN_23 = leading_vector_11 ? 8'he : _GEN_21; // @[norm.scala 98:44:@345.34]
  assign _GEN_24 = leading_vector_12 ? {{10'd0}, _T_444} : _GEN_22; // @[norm.scala 95:44:@338.32]
  assign _GEN_25 = leading_vector_12 ? 8'hd : _GEN_23; // @[norm.scala 95:44:@338.32]
  assign _GEN_26 = leading_vector_13 ? {{9'd0}, _T_440} : _GEN_24; // @[norm.scala 92:44:@331.30]
  assign _GEN_27 = leading_vector_13 ? 8'hc : _GEN_25; // @[norm.scala 92:44:@331.30]
  assign _GEN_28 = leading_vector_14 ? {{8'd0}, _T_436} : _GEN_26; // @[norm.scala 89:44:@324.28]
  assign _GEN_29 = leading_vector_14 ? 8'hb : _GEN_27; // @[norm.scala 89:44:@324.28]
  assign _GEN_30 = leading_vector_15 ? {{7'd0}, _T_432} : _GEN_28; // @[norm.scala 86:44:@317.26]
  assign _GEN_31 = leading_vector_15 ? 8'ha : _GEN_29; // @[norm.scala 86:44:@317.26]
  assign _GEN_32 = leading_vector_16 ? {{6'd0}, _T_428} : _GEN_30; // @[norm.scala 83:44:@310.24]
  assign _GEN_33 = leading_vector_16 ? 8'h9 : _GEN_31; // @[norm.scala 83:44:@310.24]
  assign _GEN_34 = leading_vector_17 ? {{5'd0}, _T_424} : _GEN_32; // @[norm.scala 80:44:@303.22]
  assign _GEN_35 = leading_vector_17 ? 8'h8 : _GEN_33; // @[norm.scala 80:44:@303.22]
  assign _GEN_36 = leading_vector_18 ? {{4'd0}, _T_420} : _GEN_34; // @[norm.scala 77:44:@296.20]
  assign _GEN_37 = leading_vector_18 ? 8'h7 : _GEN_35; // @[norm.scala 77:44:@296.20]
  assign _GEN_38 = leading_vector_19 ? {{3'd0}, _T_416} : _GEN_36; // @[norm.scala 74:44:@289.18]
  assign _GEN_39 = leading_vector_19 ? 8'h6 : _GEN_37; // @[norm.scala 74:44:@289.18]
  assign _GEN_40 = leading_vector_20 ? {{2'd0}, _T_412} : _GEN_38; // @[norm.scala 71:44:@282.16]
  assign _GEN_41 = leading_vector_20 ? 8'h5 : _GEN_39; // @[norm.scala 71:44:@282.16]
  assign _GEN_42 = leading_vector_21 ? _T_408 : _GEN_40; // @[norm.scala 68:44:@274.14]
  assign _GEN_43 = leading_vector_21 ? 8'h4 : _GEN_41; // @[norm.scala 68:44:@274.14]
  assign _GEN_44 = leading_vector_22 ? _T_402 : _GEN_42; // @[norm.scala 65:44:@267.12]
  assign _GEN_45 = leading_vector_22 ? 8'h3 : _GEN_43; // @[norm.scala 65:44:@267.12]
  assign _GEN_46 = leading_vector_23 ? _T_398 : _GEN_44; // @[norm.scala 62:44:@260.10]
  assign _GEN_47 = leading_vector_23 ? 8'h2 : _GEN_45; // @[norm.scala 62:44:@260.10]
  assign _GEN_48 = leading_vector_24 ? _T_394 : _GEN_46; // @[norm.scala 59:45:@253.8]
  assign _GEN_49 = leading_vector_24 ? 8'h1 : _GEN_47; // @[norm.scala 59:45:@253.8]
  assign _GEN_50 = leading_vector_25 ? _T_390 : _GEN_48; // @[norm.scala 56:44:@246.6]
  assign _GEN_51 = leading_vector_25 ? 8'h0 : _GEN_49; // @[norm.scala 56:44:@246.6]
  assign io_norm_sum = leading_vector_26 ? _T_386 : _GEN_50; // @[norm.scala 54:21:@241.6 norm.scala 57:21:@248.8 norm.scala 60:21:@255.10 norm.scala 63:21:@262.12 norm.scala 66:21:@269.14 norm.scala 69:21:@277.16 norm.scala 72:21:@284.18 norm.scala 75:21:@291.20 norm.scala 78:21:@298.22 norm.scala 81:21:@305.24 norm.scala 84:21:@312.26 norm.scala 87:21:@319.28 norm.scala 90:21:@326.30 norm.scala 93:21:@333.32 norm.scala 96:21:@340.34 norm.scala 99:21:@347.36 norm.scala 102:21:@354.38 norm.scala 105:21:@361.40 norm.scala 108:21:@368.42 norm.scala 111:21:@375.44 norm.scala 114:21:@382.46 norm.scala 117:21:@389.48 norm.scala 120:21:@396.50 norm.scala 123:21:@403.52 norm.scala 126:21:@410.54 norm.scala 129:21:@417.56 norm.scala 132:21:@424.58 norm.scala 135:21:@428.58]
  assign io_norm_exp = leading_vector_26 ? 8'h0 : _GEN_51; // @[norm.scala 55:21:@242.6 norm.scala 58:21:@249.8 norm.scala 61:21:@256.10 norm.scala 64:21:@263.12 norm.scala 67:21:@270.14 norm.scala 70:21:@278.16 norm.scala 73:21:@285.18 norm.scala 76:21:@292.20 norm.scala 79:21:@299.22 norm.scala 82:21:@306.24 norm.scala 85:21:@313.26 norm.scala 88:21:@320.28 norm.scala 91:21:@327.30 norm.scala 94:21:@334.32 norm.scala 97:21:@341.34 norm.scala 100:21:@348.36 norm.scala 103:21:@355.38 norm.scala 106:21:@362.40 norm.scala 109:21:@369.42 norm.scala 112:21:@376.44 norm.scala 115:21:@383.46 norm.scala 118:21:@390.48 norm.scala 121:21:@397.50 norm.scala 124:21:@404.52 norm.scala 127:21:@411.54 norm.scala 130:21:@418.56 norm.scala 133:21:@425.58 norm.scala 136:21:@429.58]
  assign io_sign = io_PP_sum[27]; // @[norm.scala 15:13:@13.4]
endmodule
