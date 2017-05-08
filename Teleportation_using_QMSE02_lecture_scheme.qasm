// Name of Experiment: Teleportation using QMSE02 lecture scheme v1
// Description: Based on the example given in the Stanford Lagunita MOOC "Quantum Mechanics for Scientists and Engineers 2" by David Miller. The only difference from the experiment by  S. Fedortchenko (https://arxiv.org/pdf/1607.02398.pdf) consists of a different Bell state for the entangled qubits shared by Alice and Bob.
More details at: https://decpieibmquantumexperience.blogspot.be/

OPENQASM 2.0;
include "qelib1.inc";


qreg q[5];
creg c[5];

h q[1];
t q[1];
y q[2];
h q[1];
h q[3];
s q[1];
cx q[3],q[2];
cx q[1],q[2];
h q[1];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
