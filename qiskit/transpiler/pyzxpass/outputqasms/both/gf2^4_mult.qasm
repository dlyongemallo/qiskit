OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[12];
u1(1.5707963267948966) qubits[4];
u2(0.0,3.141592653589793) qubits[8];
cx qubits[4],qubits[8];
u2(0.0,3.141592653589793) qubits[8];
u2(0.0,3.141592653589793) qubits[9];
cx qubits[4],qubits[9];
u2(0.0,3.141592653589793) qubits[9];
cx qubits[10],qubits[11];
u2(0.0,3.141592653589793) qubits[11];
cx qubits[11],qubits[3];
cx qubits[9],qubits[10];
u3(1.5707963267948963,-0.7853981633974485,3.141592653589793) qubits[10];
cx qubits[8],qubits[9];
cx qubits[10],qubits[9];
cx qubits[4],qubits[10];
u1(3.9269908169872414) qubits[10];
cx qubits[4],qubits[10];
u3(1.5707963267948968,0.7853981633974483,3.141592653589793) qubits[8];
cx qubits[0],qubits[8];
u1(5.497787143782138) qubits[8];
cx qubits[0],qubits[8];
cx qubits[4],qubits[0];
cx qubits[0],qubits[8];
u1(3.9269908169872414) qubits[8];
cx qubits[0],qubits[8];
cx qubits[4],qubits[8];
cx qubits[4],qubits[0];
cx qubits[0],qubits[10];
cx qubits[10],qubits[6];
u1(3.9269908169872414) qubits[6];
cx qubits[10],qubits[6];
cx qubits[0],qubits[10];
cx qubits[4],qubits[10];
cx qubits[10],qubits[2];
u1(3.9269908169872414) qubits[2];
cx qubits[4],qubits[0];
u1(2.356194490192345) qubits[0];
cx qubits[4],qubits[2];
cx qubits[10],qubits[2];
u1(5.497787143782138) qubits[2];
cx qubits[4],qubits[10];
cx qubits[3],qubits[10];
cx qubits[10],qubits[7];
cx qubits[4],qubits[0];
cx qubits[4],qubits[2];
u1(3.9269908169872414) qubits[7];
cx qubits[10],qubits[7];
cx qubits[3],qubits[10];
cx qubits[11],qubits[10];
cx qubits[10],qubits[3];
cx qubits[11],qubits[3];
u1(5.497787143782138) qubits[3];
cx qubits[7],qubits[3];
cx qubits[10],qubits[3];
cx qubits[2],qubits[10];
cx qubits[11],qubits[10];
u1(2.356194490192345) qubits[10];
cx qubits[2],qubits[10];
u1(5.497787143782138) qubits[3];
cx qubits[8],qubits[5];
u1(5.497787143782138) qubits[8];
u3(1.5707963267948963,2.356194490192345,3.141592653589793) qubits[9];
cx qubits[5],qubits[9];
u1(5.497787143782138) qubits[9];
cx qubits[5],qubits[9];
cx qubits[5],qubits[3];
cx qubits[7],qubits[3];
cx qubits[3],qubits[9];
u1(0.7853981633974483) qubits[9];
cx qubits[3],qubits[9];
cx qubits[5],qubits[3];
cx qubits[8],qubits[3];
cx qubits[3],qubits[9];
cx qubits[8],qubits[5];
cx qubits[5],qubits[1];
cx qubits[1],qubits[10];
u1(0.7853981633974483) qubits[10];
cx qubits[1],qubits[10];
u1(5.497787143782138) qubits[9];
cx qubits[3],qubits[9];
cx qubits[5],qubits[3];
cx qubits[8],qubits[3];
u1(5.497787143782138) qubits[3];
cx qubits[4],qubits[8];
cx qubits[11],qubits[4];
cx qubits[5],qubits[3];
cx qubits[4],qubits[3];
u1(0.7853981633974483) qubits[3];
cx qubits[4],qubits[3];
cx qubits[11],qubits[4];
cx qubits[11],qubits[3];
u1(5.497787143782138) qubits[3];
cx qubits[11],qubits[3];
cx qubits[4],qubits[8];
cx qubits[5],qubits[1];
cx qubits[1],qubits[10];
u1(5.497787143782138) qubits[10];
cx qubits[1],qubits[10];
cx qubits[0],qubits[10];
u1(5.497787143782138) qubits[10];
cx qubits[0],qubits[10];
cx qubits[5],qubits[1];
u1(5.497787143782138) qubits[1];
cx qubits[5],qubits[1];
cx qubits[5],qubits[11];
u1(5.497787143782138) qubits[11];
cx qubits[5],qubits[11];
cx qubits[8],qubits[6];
cx qubits[6],qubits[2];
cx qubits[6],qubits[9];
u1(5.497787143782138) qubits[9];
cx qubits[6],qubits[9];
cx qubits[2],qubits[9];
u1(0.7853981633974483) qubits[9];
cx qubits[2],qubits[9];
cx qubits[6],qubits[2];
cx qubits[8],qubits[2];
cx qubits[2],qubits[9];
cx qubits[8],qubits[6];
cx qubits[10],qubits[6];
u1(5.497787143782138) qubits[6];
cx qubits[10],qubits[6];
u1(5.497787143782138) qubits[9];
cx qubits[2],qubits[9];
cx qubits[8],qubits[2];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[8];
cx qubits[8],qubits[9];
cx qubits[9],qubits[7];
u1(0.7853981633974483) qubits[7];
cx qubits[9],qubits[7];
cx qubits[8],qubits[9];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[3];
u1(5.497787143782138) qubits[3];
cx qubits[4],qubits[6];
cx qubits[4],qubits[8];
cx qubits[4],qubits[11];
u1(5.497787143782138) qubits[11];
cx qubits[4],qubits[11];
cx qubits[4],qubits[3];
cx qubits[6],qubits[9];
cx qubits[9],qubits[10];
u1(5.497787143782138) qubits[10];
cx qubits[9],qubits[10];
cx qubits[5],qubits[10];
u1(5.497787143782138) qubits[10];
cx qubits[5],qubits[10];
cx qubits[5],qubits[11];
cx qubits[11],qubits[2];
u1(3.9269908169872414) qubits[2];
cx qubits[11],qubits[2];
cx qubits[5],qubits[11];
cx qubits[11],qubits[10];
u1(0.7853981633974483) qubits[10];
cx qubits[11],qubits[10];
cx qubits[2],qubits[11];
u1(2.356194490192345) qubits[11];
cx qubits[2],qubits[11];
cx qubits[6],qubits[9];
cx qubits[4],qubits[6];
cx qubits[0],qubits[6];
u1(5.497787143782138) qubits[6];
cx qubits[0],qubits[6];
cx qubits[11],qubits[6];
u1(5.497787143782138) qubits[6];
cx qubits[11],qubits[6];
cx qubits[8],qubits[9];
cx qubits[9],qubits[7];
u1(5.497787143782138) qubits[7];
cx qubits[1],qubits[7];
cx qubits[9],qubits[7];
u1(5.497787143782138) qubits[7];
cx qubits[1],qubits[7];
cx qubits[1],qubits[11];
u1(5.497787143782138) qubits[11];
cx qubits[8],qubits[9];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[8];
cx qubits[8],qubits[9];
u1(5.497787143782138) qubits[9];
cx qubits[8],qubits[9];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[3];
cx qubits[3],qubits[9];
cx qubits[4],qubits[6];
cx qubits[4],qubits[8];
cx qubits[9],qubits[10];
u1(5.497787143782138) qubits[10];
cx qubits[9],qubits[10];
cx qubits[3],qubits[9];
cx qubits[1],qubits[9];
cx qubits[4],qubits[3];
cx qubits[6],qubits[3];
u1(0.7853981633974483) qubits[9];
cx qubits[1],qubits[9];
cx qubits[8],qubits[9];
u1(2.356194490192345) qubits[9];
cx qubits[8],qubits[9];
cx qubits[3],qubits[9];
cx qubits[4],qubits[8];
u3(1.5707963267948968,0.0,6.283185307179586) qubits[8];
cx qubits[9],qubits[10];
u1(0.7853981633974483) qubits[10];
cx qubits[9],qubits[10];
cx qubits[3],qubits[9];
cx qubits[6],qubits[3];
cx qubits[4],qubits[6];
cx qubits[1],qubits[6];
u1(5.497787143782138) qubits[6];
cx qubits[1],qubits[6];
cx qubits[1],qubits[4];
cx qubits[2],qubits[6];
u1(2.356194490192345) qubits[4];
cx qubits[1],qubits[4];
cx qubits[5],qubits[4];
cx qubits[4],qubits[9];
u1(5.497787143782138) qubits[6];
cx qubits[2],qubits[6];
cx qubits[11],qubits[6];
cx qubits[5],qubits[2];
u1(2.356194490192345) qubits[2];
cx qubits[5],qubits[2];
u1(0.7853981633974483) qubits[6];
cx qubits[3],qubits[6];
cx qubits[11],qubits[6];
cx qubits[1],qubits[11];
u1(5.497787143782138) qubits[6];
cx qubits[3],qubits[6];
cx qubits[7],qubits[11];
u1(5.497787143782138) qubits[9];
cx qubits[4],qubits[9];
cx qubits[5],qubits[4];
cx qubits[4],qubits[0];
cx qubits[0],qubits[5];
cx qubits[5],qubits[9];
u1(0.7853981633974483) qubits[9];
cx qubits[5],qubits[9];
cx qubits[0],qubits[5];
cx qubits[4],qubits[0];
cx qubits[0],qubits[11];
cx qubits[1],qubits[4];
u1(0.7853981633974483) qubits[11];
cx qubits[0],qubits[11];
u1(5.497787143782138) qubits[11];
cx qubits[4],qubits[9];
u1(3.141592653589793) qubits[5];
cx qubits[7],qubits[11];
u1(5.497787143782138) qubits[9];
cx qubits[4],qubits[9];
cx qubits[1],qubits[4];
cx qubits[4],qubits[2];
cx qubits[4],qubits[0];
cx qubits[0],qubits[9];
u1(5.497787143782138) qubits[9];
cx qubits[0],qubits[9];
cx qubits[4],qubits[9];
cx qubits[4],qubits[0];
cx qubits[11],qubits[0];
u1(5.497787143782138) qubits[0];
cx qubits[5],qubits[0];
cx qubits[11],qubits[0];
u1(5.497787143782138) qubits[0];
cx qubits[5],qubits[0];
cx qubits[9],qubits[10];
cx qubits[10],qubits[7];
u1(5.497787143782138) qubits[7];
cx qubits[10],qubits[7];
cx qubits[0],qubits[7];
u1(5.497787143782138) qubits[7];
cx qubits[0],qubits[7];
cx qubits[9],qubits[10];
cx qubits[4],qubits[9];
cx qubits[2],qubits[9];
cx qubits[9],qubits[10];
u1(5.497787143782138) qubits[10];
cx qubits[10],qubits[7];
u1(0.7853981633974483) qubits[7];
cx qubits[10],qubits[7];
cx qubits[9],qubits[10];
cx qubits[11],qubits[10];
cx qubits[10],qubits[7];
cx qubits[2],qubits[9];
cx qubits[4],qubits[9];
cx qubits[4],qubits[2];
u1(5.497787143782138) qubits[7];
cx qubits[10],qubits[7];
cx qubits[11],qubits[10];
u2(0.0,3.141592653589793) qubits[10];
u2(0.0,3.141592653589793) qubits[11];
cx qubits[2],qubits[7];
u1(5.497787143782138) qubits[7];
cx qubits[2],qubits[7];
u2(0.0,3.141592653589793) qubits[9];
