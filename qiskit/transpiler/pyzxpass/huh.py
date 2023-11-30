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


import qiskit.ignis.verification.quantum_volume as qv


qcs = qv.qv_circuits(qubit_lists=[[0,1]])
qc = qcs[0][0][0]
print(qc.qasm() + "\n")
new_qc = qc.from_qasm_str(qc.qasm())

if __name__ == '__main__':
    pass
