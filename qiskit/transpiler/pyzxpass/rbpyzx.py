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

import qiskit.ignis.verification.randomized_benchmarking as rb
from pyzxbenchmark import pyzxbenchmark


numseeds = 1000
qcs_rb = rb.randomized_benchmarking_seq(nseeds=numseeds, length_vector=None,
                                rb_pattern=[[0,1]],
                                length_multiplier=1, seed_offset=0,
                                align_cliffs=False,
                                interleaved_gates=None,
                                is_purity=False)
qcs = [qcs_rb[0][i][0] for i in range(numseeds)]
now_dict = pyzxbenchmark(qcs, "rb")

if __name__ == '__main__':
    pass
