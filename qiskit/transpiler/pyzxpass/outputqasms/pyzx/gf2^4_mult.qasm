OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[12];
s qubits[4];
cz qubits[4],qubits[8];
cz qubits[4],qubits[9];
cx qubits[10],qubits[11];
h qubits[11];
cx qubits[11],qubits[3];
cx qubits[9],qubits[10];
h qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[8],qubits[9];
cx qubits[10],qubits[9];
cx qubits[4],qubits[10];
rz(3.9269908169872414) qubits[10];
cx qubits[4],qubits[10];
h qubits[8];
rz(0.7853981633974483) qubits[8];
cx qubits[0],qubits[8];
rz(5.497787143782138) qubits[8];
cx qubits[0],qubits[8];
cx qubits[4],qubits[0];
cx qubits[0],qubits[8];
rz(3.9269908169872414) qubits[8];
cx qubits[0],qubits[8];
cx qubits[4],qubits[8];
cx qubits[4],qubits[0];
cx qubits[0],qubits[10];
cx qubits[10],qubits[6];
rz(3.9269908169872414) qubits[6];
cx qubits[10],qubits[6];
cx qubits[0],qubits[10];
cx qubits[4],qubits[10];
cx qubits[10],qubits[2];
rz(3.9269908169872414) qubits[2];
cx qubits[4],qubits[0];
rz(2.356194490192345) qubits[0];
cx qubits[4],qubits[2];
cx qubits[10],qubits[2];
rz(5.497787143782138) qubits[2];
cx qubits[4],qubits[10];
cx qubits[3],qubits[10];
cx qubits[10],qubits[7];
cx qubits[4],qubits[0];
cx qubits[4],qubits[2];
rz(3.9269908169872414) qubits[7];
cx qubits[10],qubits[7];
cx qubits[3],qubits[10];
cx qubits[11],qubits[10];
cx qubits[10],qubits[3];
cx qubits[11],qubits[3];
rz(5.497787143782138) qubits[3];
cx qubits[7],qubits[3];
cx qubits[10],qubits[3];
cx qubits[2],qubits[10];
cx qubits[11],qubits[10];
rz(2.356194490192345) qubits[10];
cx qubits[2],qubits[10];
rz(5.497787143782138) qubits[3];
cx qubits[8],qubits[5];
rz(5.497787143782138) qubits[8];
h qubits[9];
rz(2.356194490192345) qubits[9];
cx qubits[5],qubits[9];
rz(5.497787143782138) qubits[9];
cx qubits[5],qubits[9];
cx qubits[5],qubits[3];
cx qubits[7],qubits[3];
cx qubits[3],qubits[9];
rz(0.7853981633974483) qubits[9];
cx qubits[3],qubits[9];
cx qubits[5],qubits[3];
cx qubits[8],qubits[3];
cx qubits[3],qubits[9];
cx qubits[8],qubits[5];
cx qubits[5],qubits[1];
cx qubits[1],qubits[10];
rz(0.7853981633974483) qubits[10];
cx qubits[1],qubits[10];
rz(5.497787143782138) qubits[9];
cx qubits[3],qubits[9];
cx qubits[5],qubits[3];
cx qubits[8],qubits[3];
rz(5.497787143782138) qubits[3];
cx qubits[4],qubits[8];
cx qubits[11],qubits[4];
cx qubits[5],qubits[3];
cx qubits[4],qubits[3];
rz(0.7853981633974483) qubits[3];
cx qubits[4],qubits[3];
cx qubits[11],qubits[4];
cx qubits[11],qubits[3];
rz(5.497787143782138) qubits[3];
cx qubits[11],qubits[3];
cx qubits[4],qubits[8];
cx qubits[5],qubits[1];
cx qubits[1],qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[1],qubits[10];
cx qubits[0],qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[0],qubits[10];
cx qubits[5],qubits[1];
rz(5.497787143782138) qubits[1];
cx qubits[5],qubits[1];
cx qubits[5],qubits[11];
rz(5.497787143782138) qubits[11];
cx qubits[5],qubits[11];
cx qubits[8],qubits[6];
cx qubits[6],qubits[2];
cx qubits[6],qubits[9];
rz(5.497787143782138) qubits[9];
cx qubits[6],qubits[9];
cx qubits[2],qubits[9];
rz(0.7853981633974483) qubits[9];
cx qubits[2],qubits[9];
cx qubits[6],qubits[2];
cx qubits[8],qubits[2];
cx qubits[2],qubits[9];
cx qubits[8],qubits[6];
cx qubits[10],qubits[6];
rz(5.497787143782138) qubits[6];
cx qubits[10],qubits[6];
rz(5.497787143782138) qubits[9];
cx qubits[2],qubits[9];
cx qubits[8],qubits[2];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[8];
cx qubits[8],qubits[9];
cx qubits[9],qubits[7];
rz(0.7853981633974483) qubits[7];
cx qubits[9],qubits[7];
cx qubits[8],qubits[9];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[3];
rz(5.497787143782138) qubits[3];
cx qubits[4],qubits[6];
cx qubits[4],qubits[8];
cx qubits[4],qubits[11];
rz(5.497787143782138) qubits[11];
cx qubits[4],qubits[11];
cx qubits[4],qubits[3];
cx qubits[6],qubits[9];
cx qubits[9],qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[9],qubits[10];
cx qubits[5],qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[5],qubits[10];
cx qubits[5],qubits[11];
cx qubits[11],qubits[2];
rz(3.9269908169872414) qubits[2];
cx qubits[11],qubits[2];
cx qubits[5],qubits[11];
cx qubits[11],qubits[10];
rz(0.7853981633974483) qubits[10];
cx qubits[11],qubits[10];
cx qubits[2],qubits[11];
rz(2.356194490192345) qubits[11];
cx qubits[2],qubits[11];
cx qubits[6],qubits[9];
cx qubits[4],qubits[6];
cx qubits[0],qubits[6];
rz(5.497787143782138) qubits[6];
cx qubits[0],qubits[6];
cx qubits[11],qubits[6];
rz(5.497787143782138) qubits[6];
cx qubits[11],qubits[6];
cx qubits[8],qubits[9];
cx qubits[9],qubits[7];
rz(5.497787143782138) qubits[7];
cx qubits[1],qubits[7];
cx qubits[9],qubits[7];
rz(5.497787143782138) qubits[7];
cx qubits[1],qubits[7];
cx qubits[1],qubits[11];
rz(5.497787143782138) qubits[11];
cx qubits[8],qubits[9];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[8];
cx qubits[8],qubits[9];
rz(5.497787143782138) qubits[9];
cx qubits[8],qubits[9];
cx qubits[4],qubits[8];
cx qubits[1],qubits[4];
cx qubits[4],qubits[3];
cx qubits[3],qubits[9];
cx qubits[4],qubits[6];
cx qubits[4],qubits[8];
cx qubits[9],qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[9],qubits[10];
cx qubits[3],qubits[9];
cx qubits[1],qubits[9];
cx qubits[4],qubits[3];
cx qubits[6],qubits[3];
rz(0.7853981633974483) qubits[9];
cx qubits[1],qubits[9];
cx qubits[8],qubits[9];
rz(2.356194490192345) qubits[9];
cx qubits[8],qubits[9];
cx qubits[3],qubits[9];
cx qubits[4],qubits[8];
h qubits[8];
x qubits[8];
cx qubits[9],qubits[10];
rz(0.7853981633974483) qubits[10];
cx qubits[9],qubits[10];
cx qubits[3],qubits[9];
cx qubits[6],qubits[3];
cx qubits[4],qubits[6];
cx qubits[1],qubits[6];
rz(5.497787143782138) qubits[6];
cx qubits[1],qubits[6];
cx qubits[1],qubits[4];
cx qubits[2],qubits[6];
rz(2.356194490192345) qubits[4];
cx qubits[1],qubits[4];
cx qubits[5],qubits[4];
cx qubits[4],qubits[9];
rz(5.497787143782138) qubits[6];
cx qubits[2],qubits[6];
cx qubits[11],qubits[6];
cx qubits[5],qubits[2];
rz(2.356194490192345) qubits[2];
cx qubits[5],qubits[2];
rz(0.7853981633974483) qubits[6];
cx qubits[3],qubits[6];
cx qubits[11],qubits[6];
cx qubits[1],qubits[11];
rz(5.497787143782138) qubits[6];
cx qubits[3],qubits[6];
cx qubits[7],qubits[11];
rz(5.497787143782138) qubits[9];
cx qubits[4],qubits[9];
cx qubits[5],qubits[4];
cx qubits[4],qubits[0];
cx qubits[0],qubits[5];
cx qubits[5],qubits[9];
rz(0.7853981633974483) qubits[9];
cx qubits[5],qubits[9];
cx qubits[0],qubits[5];
cx qubits[4],qubits[0];
cx qubits[0],qubits[11];
cx qubits[1],qubits[4];
rz(0.7853981633974483) qubits[11];
cx qubits[0],qubits[11];
rz(5.497787143782138) qubits[11];
cx qubits[4],qubits[9];
z qubits[5];
cx qubits[7],qubits[11];
rz(5.497787143782138) qubits[9];
cx qubits[4],qubits[9];
cx qubits[1],qubits[4];
cx qubits[4],qubits[2];
cx qubits[4],qubits[0];
cx qubits[0],qubits[9];
rz(5.497787143782138) qubits[9];
cx qubits[0],qubits[9];
cx qubits[4],qubits[9];
cx qubits[4],qubits[0];
cx qubits[11],qubits[0];
rz(5.497787143782138) qubits[0];
cx qubits[5],qubits[0];
cx qubits[11],qubits[0];
rz(5.497787143782138) qubits[0];
cx qubits[5],qubits[0];
cx qubits[9],qubits[10];
cx qubits[10],qubits[7];
rz(5.497787143782138) qubits[7];
cx qubits[10],qubits[7];
cx qubits[0],qubits[7];
rz(5.497787143782138) qubits[7];
cx qubits[0],qubits[7];
cx qubits[9],qubits[10];
cx qubits[4],qubits[9];
cx qubits[2],qubits[9];
cx qubits[9],qubits[10];
rz(5.497787143782138) qubits[10];
cx qubits[10],qubits[7];
rz(0.7853981633974483) qubits[7];
cx qubits[10],qubits[7];
cx qubits[9],qubits[10];
cx qubits[11],qubits[10];
cx qubits[10],qubits[7];
cx qubits[2],qubits[9];
cx qubits[4],qubits[9];
cx qubits[4],qubits[2];
rz(5.497787143782138) qubits[7];
cx qubits[10],qubits[7];
cx qubits[11],qubits[10];
h qubits[10];
h qubits[11];
cx qubits[2],qubits[7];
rz(5.497787143782138) qubits[7];
cx qubits[2],qubits[7];
h qubits[9];
