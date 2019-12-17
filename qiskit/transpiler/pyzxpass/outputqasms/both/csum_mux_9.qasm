OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[30];
u1(1.5707963267948966) qubits[2];
u3(1.5707963267948963,1.5707963267948963,3.141592653589793) qubits[4];
cx qubits[3],qubits[4];
u1(5.497787143782138) qubits[4];
cx qubits[3],qubits[4];
u2(0.0,3.141592653589793) qubits[5];
cx qubits[3],qubits[5];
u2(0.0,3.141592653589793) qubits[5];
cx qubits[3],qubits[5];
cx qubits[0],qubits[3];
u1(5.497787143782138) qubits[3];
cx qubits[3],qubits[4];
u1(0.7853981633974483) qubits[4];
cx qubits[3],qubits[4];
cx qubits[0],qubits[3];
u3(1.5707963267948963,-2.356194490192345,3.141592653589793) qubits[5];
cx qubits[3],qubits[5];
cx qubits[5],qubits[1];
cx qubits[1],qubits[2];
u1(5.497787143782138) qubits[2];
cx qubits[1],qubits[2];
cx qubits[3],qubits[2];
cx qubits[5],qubits[1];
cx qubits[3],qubits[5];
cx qubits[2],qubits[5];
u1(5.497787143782138) qubits[5];
cx qubits[2],qubits[5];
cx qubits[1],qubits[2];
cx qubits[3],qubits[2];
cx qubits[1],qubits[3];
u1(0.7853981633974483) qubits[2];
u1(2.356194490192345) qubits[3];
cx qubits[1],qubits[3];
cx qubits[1],qubits[5];
u1(3.9269908169872414) qubits[5];
cx qubits[1],qubits[5];
cx qubits[1],qubits[2];
cx qubits[2],qubits[0];
u1(0.7853981633974483) qubits[0];
cx qubits[2],qubits[4];
cx qubits[3],qubits[5];
u1(5.497787143782138) qubits[4];
cx qubits[2],qubits[4];
cx qubits[0],qubits[4];
u1(5.497787143782138) qubits[4];
cx qubits[0],qubits[4];
cx qubits[2],qubits[0];
u1(4.71238898038469) qubits[8];
u2(0.0,3.141592653589793) qubits[9];
cx qubits[7],qubits[9];
u3(1.5707963267948963,1.5707963267948963,3.141592653589793) qubits[9];
u2(0.0,3.141592653589793) qubits[10];
cx qubits[9],qubits[10];
cx qubits[10],qubits[6];
u2(0.0,3.141592653589793) qubits[10];
u1(0.7853981633974483) qubits[6];
cx qubits[9],qubits[10];
u3(1.5707963267948963,-2.356194490192345,3.141592653589793) qubits[10];
cx qubits[10],qubits[6];
u2(0.0,3.141592653589793) qubits[11];
cx qubits[9],qubits[11];
u1(3.9269908169872414) qubits[11];
cx qubits[7],qubits[11];
u2(0.0,3.141592653589793) qubits[11];
cx qubits[9],qubits[11];
u3(1.5707963267948968,0.7853981633974483,3.141592653589793) qubits[11];
cx qubits[6],qubits[9];
u1(5.497787143782138) qubits[9];
cx qubits[6],qubits[9];
cx qubits[9],qubits[8];
cx qubits[8],qubits[11];
cx qubits[11],qubits[7];
u1(2.356194490192345) qubits[11];
u1(5.497787143782138) qubits[7];
cx qubits[11],qubits[7];
cx qubits[8],qubits[11];
cx qubits[9],qubits[10];
cx qubits[9],qubits[8];
cx qubits[8],qubits[7];
u1(0.7853981633974483) qubits[7];
cx qubits[8],qubits[7];
cx qubits[10],qubits[8];
u1(5.497787143782138) qubits[8];
cx qubits[10],qubits[8];
cx qubits[9],qubits[10];
cx qubits[8],qubits[9];
cx qubits[9],qubits[6];
cx qubits[6],qubits[10];
u1(2.356194490192345) qubits[10];
cx qubits[6],qubits[10];
cx qubits[8],qubits[6];
cx qubits[9],qubits[6];
u1(3.9269908169872414) qubits[6];
cx qubits[8],qubits[9];
cx qubits[8],qubits[6];
cx qubits[9],qubits[7];
u1(2.356194490192345) qubits[7];
cx qubits[12],qubits[4];
cx qubits[10],qubits[4];
cx qubits[11],qubits[10];
cx qubits[12],qubits[10];
u3(2.356194490192345,-1.5707963267948961,1.570796326794897) qubits[10];
cx qubits[11],qubits[12];
cx qubits[5],qubits[12];
u3(0.7853981633974484,1.5707963267948966,4.71238898038469) qubits[12];
cx qubits[5],qubits[10];
u2(0.0,3.141592653589793) qubits[10];
cx qubits[10],qubits[11];
u2(0.0,3.141592653589793) qubits[10];
cx qubits[5],qubits[11];
cx qubits[4],qubits[11];
u3(0.7853981633974484,1.5707963267948966,4.71238898038469) qubits[11];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[4];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[5];
cx qubits[9],qubits[12];
cx qubits[9],qubits[7];
cx qubits[7],qubits[10];
u2(0.0,3.141592653589793) qubits[10];
cx qubits[7],qubits[11];
u2(0.0,3.141592653589793) qubits[11];
u2(0.0,3.141592653589793) qubits[9];
cx qubits[4],qubits[9];
cx qubits[4],qubits[12];
cx qubits[7],qubits[12];
u2(0.0,3.141592653589793) qubits[12];
cx qubits[11],qubits[12];
cx qubits[12],qubits[10];
u2(0.0,3.141592653589793) qubits[9];
u3(1.5707963267948963,1.5707963267948963,3.141592653589793) qubits[13];
u1(1.5707963267948966) qubits[16];
cx qubits[14],qubits[16];
u2(0.0,3.141592653589793) qubits[17];
cx qubits[15],qubits[17];
u2(0.0,3.141592653589793) qubits[17];
u2(0.0,3.141592653589793) qubits[18];
cx qubits[18],qubits[16];
u1(5.497787143782138) qubits[16];
cx qubits[14],qubits[16];
u1(5.497787143782138) qubits[16];
cx qubits[14],qubits[16];
u1(1.5707963267948966) qubits[18];
cx qubits[18],qubits[16];
u1(0.7853981633974483) qubits[16];
cx qubits[14],qubits[16];
u2(0.0,3.141592653589793) qubits[19];
cx qubits[15],qubits[19];
cx qubits[17],qubits[19];
u2(0.0,3.141592653589793) qubits[19];
cx qubits[17],qubits[19];
cx qubits[16],qubits[17];
u3(1.5707963267948968,0.7853981633974483,3.141592653589793) qubits[19];
cx qubits[19],qubits[15];
u1(3.9269908169872414) qubits[15];
cx qubits[19],qubits[15];
cx qubits[17],qubits[19];
cx qubits[19],qubits[15];
u1(5.497787143782138) qubits[15];
cx qubits[19],qubits[15];
cx qubits[17],qubits[19];
cx qubits[16],qubits[17];
cx qubits[17],qubits[15];
u1(5.497787143782138) qubits[15];
cx qubits[16],qubits[15];
cx qubits[17],qubits[18];
cx qubits[18],qubits[14];
u1(0.7853981633974483) qubits[14];
cx qubits[17],qubits[14];
cx qubits[17],qubits[15];
u1(3.9269908169872414) qubits[15];
cx qubits[16],qubits[15];
cx qubits[18],qubits[14];
u1(5.497787143782138) qubits[14];
cx qubits[17],qubits[18];
cx qubits[17],qubits[14];
cx qubits[16],qubits[17];
cx qubits[17],qubits[19];
u1(2.356194490192345) qubits[19];
cx qubits[17],qubits[19];
cx qubits[16],qubits[17];
cx qubits[17],qubits[18];
u1(5.497787143782138) qubits[18];
cx qubits[17],qubits[18];
u1(1.5707963267948966) qubits[22];
u1(1.5707963267948966) qubits[23];
u3(1.5707963267948963,1.5707963267948963,3.141592653589793) qubits[24];
u2(0.0,3.141592653589793) qubits[25];
cx qubits[25],qubits[21];
cx qubits[21],qubits[23];
u1(0.7853981633974483) qubits[23];
cx qubits[21],qubits[23];
cx qubits[25],qubits[22];
u1(5.497787143782138) qubits[22];
cx qubits[20],qubits[22];
u1(1.5707963267948966) qubits[25];
cx qubits[25],qubits[22];
u1(0.7853981633974483) qubits[22];
cx qubits[20],qubits[22];
cx qubits[25],qubits[21];
cx qubits[21],qubits[22];
u1(0.7853981633974483) qubits[22];
cx qubits[21],qubits[22];
cx qubits[21],qubits[23];
u1(5.497787143782138) qubits[23];
cx qubits[21],qubits[23];
cx qubits[20],qubits[23];
u1(5.497787143782138) qubits[23];
cx qubits[23],qubits[24];
u1(0.7853981633974483) qubits[24];
cx qubits[23],qubits[24];
cx qubits[24],qubits[22];
u1(5.497787143782138) qubits[22];
cx qubits[20],qubits[22];
u1(5.497787143782138) qubits[22];
cx qubits[20],qubits[22];
cx qubits[20],qubits[23];
cx qubits[24],qubits[22];
cx qubits[25],qubits[23];
u1(5.497787143782138) qubits[23];
cx qubits[25],qubits[23];
cx qubits[21],qubits[25];
cx qubits[23],qubits[24];
u1(5.497787143782138) qubits[24];
cx qubits[23],qubits[24];
cx qubits[24],qubits[19];
cx qubits[17],qubits[19];
cx qubits[15],qubits[19];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[24];
cx qubits[25],qubits[22];
u1(5.497787143782138) qubits[22];
cx qubits[25],qubits[22];
cx qubits[21],qubits[25];
cx qubits[18],qubits[25];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[18];
u3(1.5707963267948963,-1.5707963267948968,3.141592653589793) qubits[26];
cx qubits[25],qubits[27];
cx qubits[19],qubits[25];
cx qubits[27],qubits[19];
u3(1.5707963267948968,0.7853981633974483,3.141592653589793) qubits[19];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[27];
cx qubits[27],qubits[25];
u3(1.5707963267948963,-2.356194490192345,3.141592653589793) qubits[25];
cx qubits[13],qubits[28];
cx qubits[13],qubits[5];
cx qubits[26],qubits[28];
cx qubits[26],qubits[18];
u1(0.7853981633974483) qubits[18];
cx qubits[24],qubits[18];
cx qubits[24],qubits[19];
u1(-1.5707963267948966) qubits[19];
cx qubits[19],qubits[27];
cx qubits[24],qubits[25];
u1(-1.5707963267948966) qubits[25];
cx qubits[26],qubits[18];
u1(2.356194490192345) qubits[27];
cx qubits[19],qubits[27];
cx qubits[18],qubits[27];
cx qubits[24],qubits[19];
u1(0.7853981633974483) qubits[27];
cx qubits[18],qubits[27];
cx qubits[24],qubits[18];
cx qubits[25],qubits[27];
u1(2.356194490192345) qubits[27];
cx qubits[25],qubits[27];
cx qubits[24],qubits[25];
cx qubits[27],qubits[26];
cx qubits[26],qubits[25];
cx qubits[25],qubits[19];
u1(2.356194490192345) qubits[19];
cx qubits[25],qubits[19];
cx qubits[26],qubits[25];
cx qubits[24],qubits[26];
cx qubits[27],qubits[26];
cx qubits[26],qubits[25];
cx qubits[25],qubits[19];
u1(5.497787143782138) qubits[19];
cx qubits[25],qubits[19];
cx qubits[26],qubits[25];
cx qubits[24],qubits[26];
cx qubits[27],qubits[24];
cx qubits[24],qubits[26];
cx qubits[26],qubits[18];
u1(5.497787143782138) qubits[18];
cx qubits[19],qubits[18];
cx qubits[25],qubits[18];
cx qubits[26],qubits[18];
cx qubits[24],qubits[26];
cx qubits[19],qubits[24];
cx qubits[25],qubits[24];
cx qubits[19],qubits[25];
u3(1.5707963267948963,1.5707963267948963,3.141592653589793) qubits[19];
u3(0.7853981633974484,1.5707963267948966,4.71238898038469) qubits[26];
cx qubits[27],qubits[18];
cx qubits[27],qubits[24];
u2(0.0,3.141592653589793) qubits[27];
cx qubits[19],qubits[27];
u2(0.0,3.141592653589793) qubits[27];
cx qubits[25],qubits[27];
u3(1.5707963267948963,-1.5707963267948963,3.141592653589793) qubits[28];
u1(0.7853981633974483) qubits[5];
cx qubits[13],qubits[5];
cx qubits[10],qubits[13];
u1(5.497787143782138) qubits[13];
cx qubits[10],qubits[13];
cx qubits[12],qubits[10];
cx qubits[11],qubits[12];
cx qubits[12],qubits[4];
cx qubits[4],qubits[10];
u1(2.356194490192345) qubits[10];
cx qubits[4],qubits[10];
cx qubits[11],qubits[10];
cx qubits[10],qubits[13];
cx qubits[12],qubits[4];
cx qubits[13],qubits[4];
u1(5.497787143782138) qubits[4];
cx qubits[13],qubits[4];
cx qubits[10],qubits[13];
cx qubits[11],qubits[10];
cx qubits[12],qubits[13];
cx qubits[13],qubits[5];
cx qubits[4],qubits[5];
u1(5.497787143782138) qubits[5];
cx qubits[13],qubits[5];
cx qubits[12],qubits[13];
cx qubits[13],qubits[26];
u3(1.5707963267948963,-2.356194490192345,3.141592653589793) qubits[13];
u2(0.0,3.141592653589793) qubits[26];
cx qubits[26],qubits[28];
u1(-1.5707963267948966) qubits[28];
cx qubits[5],qubits[12];
u1(0.7853981633974483) qubits[12];
cx qubits[5],qubits[12];
cx qubits[11],qubits[12];
cx qubits[4],qubits[5];
cx qubits[10],qubits[5];
cx qubits[11],qubits[5];
cx qubits[12],qubits[4];
u1(5.497787143782138) qubits[4];
cx qubits[12],qubits[4];
cx qubits[11],qubits[12];
cx qubits[12],qubits[5];
cx qubits[10],qubits[12];
cx qubits[11],qubits[12];
cx qubits[4],qubits[10];
cx qubits[11],qubits[10];
cx qubits[4],qubits[11];
cx qubits[12],qubits[4];
u3(1.5707963267948963,1.5707963267948963,3.141592653589793) qubits[29];
cx qubits[28],qubits[29];
u1(5.497787143782138) qubits[29];
cx qubits[28],qubits[29];
cx qubits[13],qubits[29];
cx qubits[26],qubits[28];
u2(0.0,3.141592653589793) qubits[26];
u1(5.497787143782138) qubits[29];
cx qubits[4],qubits[26];
u2(0.0,3.141592653589793) qubits[26];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[4];
cx qubits[4],qubits[28];
u1(0.7853981633974483) qubits[28];
cx qubits[4],qubits[28];
cx qubits[13],qubits[28];
cx qubits[28],qubits[19];
cx qubits[19],qubits[26];
u1(2.356194490192345) qubits[26];
cx qubits[19],qubits[26];
cx qubits[26],qubits[4];
cx qubits[28],qubits[19];
cx qubits[13],qubits[28];
cx qubits[28],qubits[19];
u1(2.356194490192345) qubits[19];
cx qubits[4],qubits[19];
cx qubits[28],qubits[19];
u1(5.497787143782138) qubits[19];
cx qubits[4],qubits[19];
cx qubits[26],qubits[4];
cx qubits[4],qubits[28];
cx qubits[28],qubits[19];
cx qubits[19],qubits[26];
u1(0.7853981633974483) qubits[26];
cx qubits[19],qubits[26];
cx qubits[28],qubits[19];
cx qubits[4],qubits[28];
cx qubits[29],qubits[28];
cx qubits[28],qubits[19];
cx qubits[19],qubits[26];
u1(0.7853981633974483) qubits[26];
cx qubits[19],qubits[26];
cx qubits[26],qubits[4];
cx qubits[28],qubits[19];
cx qubits[29],qubits[28];
cx qubits[13],qubits[29];
cx qubits[19],qubits[29];
cx qubits[26],qubits[13];
cx qubits[28],qubits[13];
cx qubits[28],qubits[26];
u2(0.0,3.141592653589793) qubits[28];
u1(5.497787143782138) qubits[29];
cx qubits[19],qubits[29];
cx qubits[19],qubits[25];
cx qubits[25],qubits[19];
cx qubits[19],qubits[25];
cx qubits[25],qubits[27];
cx qubits[27],qubits[25];
cx qubits[25],qubits[27];
u2(0.0,3.141592653589793) qubits[29];
cx qubits[4],qubits[11];
cx qubits[11],qubits[4];
cx qubits[4],qubits[11];
cx qubits[11],qubits[12];
cx qubits[12],qubits[11];
cx qubits[11],qubits[12];
