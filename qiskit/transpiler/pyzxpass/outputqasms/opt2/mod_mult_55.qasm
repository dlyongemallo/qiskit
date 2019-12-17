OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[9];
u3(3.141592653589793,0.0,3.141592653589793) qubits[2];
u2(0.0,3.141592653589793) qubits[6];
u2(0.0,3.141592653589793) qubits[7];
cx qubits[2],qubits[7];
u1(-0.7853981633974483) qubits[7];
cx qubits[0],qubits[7];
u1(0.7853981633974483) qubits[7];
cx qubits[2],qubits[7];
u1(0.7853981633974483) qubits[2];
u1(-0.7853981633974483) qubits[7];
cx qubits[0],qubits[7];
cx qubits[0],qubits[2];
u1(0.7853981633974483) qubits[0];
u1(-0.7853981633974483) qubits[2];
cx qubits[0],qubits[2];
u3(3.141592653589793,0.0,3.141592653589793) qubits[0];
u3(3.141592653589793,0.0,3.141592653589793) qubits[2];
u2(0.0,10.210176124166829) qubits[7];
cx qubits[7],qubits[6];
u1(-0.7853981633974483) qubits[6];
cx qubits[1],qubits[6];
u1(0.7853981633974483) qubits[6];
cx qubits[7],qubits[6];
u1(-0.7853981633974483) qubits[6];
cx qubits[1],qubits[6];
u2(0.0,10.210176124166829) qubits[6];
cx qubits[6],qubits[5];
cx qubits[6],qubits[3];
u2(0.0,3.141592653589793) qubits[3];
u2(0.0,3.141592653589793) qubits[6];
u1(0.7853981633974483) qubits[7];
cx qubits[1],qubits[7];
u1(0.7853981633974483) qubits[1];
u1(-0.7853981633974483) qubits[7];
cx qubits[1],qubits[7];
u3(3.141592653589793,0.0,3.141592653589793) qubits[1];
u2(0.0,3.141592653589793) qubits[8];
cx qubits[2],qubits[8];
u1(-0.7853981633974483) qubits[8];
cx qubits[0],qubits[8];
u1(0.7853981633974483) qubits[8];
cx qubits[2],qubits[8];
u1(0.7853981633974483) qubits[2];
u1(-0.7853981633974483) qubits[8];
cx qubits[0],qubits[8];
cx qubits[0],qubits[2];
u1(1.5707963267948966) qubits[0];
u1(-0.7853981633974483) qubits[2];
cx qubits[0],qubits[2];
u2(0.0,10.210176124166829) qubits[8];
cx qubits[8],qubits[7];
u3(3.141592653589793,0.0,3.141592653589793) qubits[7];
cx qubits[7],qubits[3];
u1(-0.7853981633974483) qubits[3];
cx qubits[8],qubits[6];
u1(-0.7853981633974483) qubits[6];
cx qubits[1],qubits[6];
u1(0.7853981633974483) qubits[6];
cx qubits[8],qubits[6];
u1(-0.7853981633974483) qubits[6];
cx qubits[1],qubits[6];
u2(0.0,10.210176124166829) qubits[6];
cx qubits[6],qubits[4];
u1(0.7853981633974483) qubits[8];
cx qubits[1],qubits[8];
u1(1.5707963267948966) qubits[1];
u1(-0.7853981633974483) qubits[8];
cx qubits[1],qubits[8];
cx qubits[1],qubits[3];
u1(0.7853981633974483) qubits[3];
cx qubits[5],qubits[8];
u2(0.0,3.141592653589793) qubits[5];
cx qubits[7],qubits[3];
u1(-0.7853981633974483) qubits[3];
cx qubits[1],qubits[3];
u2(0.0,10.210176124166829) qubits[3];
u1(0.7853981633974483) qubits[7];
cx qubits[1],qubits[7];
u1(-0.7853981633974483) qubits[7];
cx qubits[1],qubits[7];
u3(3.141592653589793,0.0,3.141592653589793) qubits[1];
cx qubits[7],qubits[5];
u1(-0.7853981633974483) qubits[5];
cx qubits[1],qubits[5];
u1(0.7853981633974483) qubits[5];
cx qubits[7],qubits[5];
u1(-0.7853981633974483) qubits[5];
cx qubits[1],qubits[5];
u2(0.0,10.210176124166829) qubits[5];
u1(0.7853981633974483) qubits[7];
cx qubits[1],qubits[7];
u1(0.7853981633974483) qubits[1];
u1(-0.7853981633974483) qubits[7];
cx qubits[1],qubits[7];
u3(3.141592653589793,0.0,3.141592653589793) qubits[7];
u2(0.0,3.141592653589793) qubits[8];
cx qubits[2],qubits[8];
u1(-0.7853981633974483) qubits[8];
cx qubits[0],qubits[8];
u1(0.7853981633974483) qubits[8];
cx qubits[2],qubits[8];
u1(0.7853981633974483) qubits[2];
u1(-0.7853981633974483) qubits[8];
cx qubits[0],qubits[8];
cx qubits[0],qubits[2];
u1(-0.7853981633974483) qubits[2];
cx qubits[0],qubits[2];
u3(3.141592653589793,0.0,3.141592653589793) qubits[0];
u2(0.0,10.210176124166829) qubits[8];
cx qubits[5],qubits[8];
