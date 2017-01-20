# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
from QuantumComputer_v2 import *

test_1bit="""h q[1];
h q[1];
x q[3];
cx q[1],q[2];
h q[1];
h q[2];
h q[3];
cx q[3],q[2];
h q[2];
h q[3];
u3(-0.159,0,0) q[3];
h q[2];
h q[3];
cx q[3],q[2];
h q[2];
h q[3];
h q[1];
u3(0.159,0,0) q[3];
cx q[1],q[2];
h q[1];
measure q[1];
measure q[2];
measure q[3];"""
	
qc=QuantumComputer()
qc.execute(test_1bit)
Probability.pretty_print_probabilities(qc.qubits.get_quantum_register_containing ("q1").get_noop
())


