# -*- coding: utf-8 -*-

# This code is part of Qiskit.
#
# (C) Copyright IBM 2019.
#
# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.

"""Randomized Benchmarking, PyZX qasm-to-qasm transpiler pass"""

import qiskit
from feynmanqasms import qasmfiles
from pyzxbenchmark import pyzxbenchmark
from qiskit import QuantumCircuit

qcs = []
names = []
for f in qasmfiles:
    fo = open(f)
    qasm = fo.read()
    fo.close()
    names = names + [f[13:-5]]
    qc = QuantumCircuit().from_qasm_str(qasm)
    print(fo.name, ": ", qc.size(), "gates")
    #qcs = qcs + [qc]
    now_dict = pyzxbenchmark([qc], "fm", names=[f[13:-5]])

if __name__ == '__main__':
    pass
