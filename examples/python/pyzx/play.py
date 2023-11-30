# -*- coding: utf-8 -*-

# This code is part of Qiskit.
#
# (C) Copyright IBM 2017, 2018.
#
# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.

"""
Example showing how to use Qiskit-Terra at level 0 (novice).

This example shows the most basic way to user Terra. It builds some circuits
and runs them on both the BasicAer (local Qiskit provider) or IBMQ (remote IBMQ provider).

To control the compile parameters we have provided a transpile function which can be used 
as a level 1 user.

"""

from math import pi
from qiskit import QuantumCircuit, QiskitError
from qiskit import execute, BasicAer

qc = QuantumCircuit(2, 2)
qc.rx(pi, [0, 1])
qc.x([0, 1])
qc.rz(pi, [0, 1])
qc.z([0, 1])
qc.s([0, 1])
qc.sdg([0, 1])
qc.t([0, 1])
qc.tdg([0, 1])
qc.h([0, 1])
qc.measure([0, 1], [0, 1])

# setting up the backend
print(BasicAer.backends())

# running the job
job_sim = execute(qc, BasicAer.get_backend('qasm_simulator'))
sim_result = job_sim.result()

print("\nPrint all gates:")
[print(dat) for dat in qc.data]

qasm = qc.qasm()
print("\nPrint QASM:")
print(qasm)

# Draw the circuit
print(qc)

# Show the results
print(sim_result.get_counts(qc))
