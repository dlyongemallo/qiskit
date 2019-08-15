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

"""Analyze benchmark, PyZX qasm-to-qasm transpiler pass"""

import sys
import pickle
import numpy as np

filepath = sys.argv[1]
print("filepath: ", filepath)
now_dict = pickle.load(open(filepath, 'rb'))
print("\nnow_dict:")
[print(key, ':\n', value) for key, value in now_dict.items()]
print("\nmean size:")
[print(np.mean(now_dict['size'][i])) for i in range(4)]
print("\nmean depth:")
[print(np.mean(now_dict['depth'][i])) for i in range(4)]
print("\nmean cx or cz gate count:")
[print(np.mean(now_dict['c count'][i])) for i in range(4)]
size_3_2 = [now_dict['size'][3][j] / now_dict['size'][2][j] for j in range(len(now_dict['size'][0]))]
print("\nPercentage of circuits for which PyZX + Qiskit beat Qiskit in size:")
print(len([i for i in size_3_2 if i < 1]) / len(size_3_2))
print("\nPercentage of circuits for which PyZX + Qiskit did not lose to Qiskit in size:")
print(len([i for i in size_3_2 if i <= 1]) / len(size_3_2))
depth_3_2 = [now_dict['depth'][3][j] / now_dict['depth'][2][j] for j in range(len(now_dict['depth'][0]))]
print("\nPercentage of circuits for which PyZX + Qiskit beat Qiskit in depth:")
print(len([i for i in depth_3_2 if i < 1]) / len(depth_3_2))
print("\nPercentage of circuits for which PyZX + Qiskit did not lose to Qiskit in depth:")
print(len([i for i in depth_3_2 if i <= 1]) / len(depth_3_2))



if __name__ == '__main__':
    pass
