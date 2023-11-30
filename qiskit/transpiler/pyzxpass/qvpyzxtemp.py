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

"""Quantum Volume, PyZX qasm-to-qasm transpiler pass"""

import qiskit.ignis.verification.quantum_volume as qv
from pyzxbenchmarktemp import pyzxbenchmarktemp


num_trials = 10
qcs_qv = qv.qv_circuits(qubit_lists=[[0, 1]], ntrials=num_trials, qr=None, cr=None)
qcs = [qcs_qv[0][i][0] for i in range(num_trials)]
now_dict = pyzxbenchmarktemp(qcs, "qv")

if __name__ == '__main__':
    pass
