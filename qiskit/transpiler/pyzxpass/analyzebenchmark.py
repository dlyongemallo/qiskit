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
import matplotlib.pyplot as plt
"""
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
"""
class AnalyzePyZXpass(object):
    """Class for returning results and analysis from PyZX pass on benchmarks"""
    def __init__(self, now_dict): #now_dict should be filepath to pickle created when running benchmark
        self.__dict = pickle.load(open(now_dict, 'rb')) if isinstance(now_dict, str) else now_dict
        self.__mean_size = [(np.mean(self.__dict['size'][i])) for i in range(4)]
        self.__mean_depth = [(np.mean(self.__dict['depth'][i])) for i in range(4)]
        self.__mean_c = [(np.mean(self.__dict['c count'][i])) for i in range(4)]

    def get_dict(self):
        return self.__dict
    def get_mean_size(self):
        return self.__mean_size
    def get_mean_depth(self):
        return self.__mean_depth
    def get_mean_cz_cx(self):
        return self.__mean_c    
#    def get_performance_percents(self):
#        percents_list = {}
#        return percents_dict

    def plot_depth(self):
        mean_list = self.__mean_depth
        plt.title("Average Circuit Depths")
        plt.bar(range(len(mean_list)), mean_list, align='center', color = ["xkcd:neon blue", "xkcd:cerise", "xkcd:tangerine", "xkcd:heliotrope"])
        plt.xticks(range(len(mean_list)), ["None", "PyZX", "Qiskit Transpiler", "Both"])
        plt.xlabel("Circuit Optimization Type")
        plt.ylabel("depth")
        plt.show()
        return plt 

    def plot_size(self):
        mean_list = self.__mean_size
        plt.title("Average Circuit Sizes")
        plt.bar(range(len(mean_list)), mean_list, align='center', color = ["xkcd:neon blue", "xkcd:cerise", "xkcd:tangerine", "xkcd:heliotrope"])
        plt.xticks(range(len(mean_list)), ["None", "PyZX", "Qiskit Transpiler", "Both"])
        plt.xlabel("Circuit Optimization Type")
        plt.ylabel("size")
        plt.show()
        return plt

    def plot_cx_and_cz(self):
        mean_list = self.__mean_c
        plt.title("Average Circuit CZ or CX count")
        plt.bar(range(len(mean_list)), mean_list, align='center', color = ["xkcd:neon blue", "xkcd:cerise", "xkcd:tangerine", "xkcd:heliotrope"])
        plt.xticks(range(len(mean_list)), ["None", "PyZX", "Qiskit Transpiler", "Both"])
        plt.xlabel("Circuit Optimization Type")
        plt.ylabel("number of cx or cz gates")
        plt.show()
        return plt

    def plot_percents(self):
        now_dict = self.__dict
        depth_3_2 = [now_dict['depth'][3][j] / now_dict['depth'][2][j] for j in range(len(now_dict['depth'][0]))]
        size_3_2 = [now_dict['size'][3][j] / now_dict['size'][2][j] for j in range(len(now_dict['size'][0]))]
        s0 = len([i for i in size_3_2 if i < 1]) / len(size_3_2)
        d0 = len([i for i in depth_3_2 if i < 1]) / len(depth_3_2)
        s1 = len([i for i in size_3_2 if i == 1]) / len(size_3_2)
        d1 = len([i for i in depth_3_2 if i == 1]) / len(depth_3_2)
        OutPerforms = (d0, s0)
        EquiPerforms = (d1, s1)
        ind = np.arange(2)    # the x locations for the groups
        width = 0.35       # the width of the bars: can also be len(x) sequence
        p1 = plt.bar(ind, OutPerforms)
        p2 = plt.bar(ind, EquiPerforms, bottom=OutPerforms)
        plt.ylabel('Percent')
        plt.title('PyZX+Qiskit Outperforming Qiskit Percentages')
        plt.xticks(ind, ('Depth', 'Size'))
        plt.yticks(np.arange(0, 1.01,.1))
        plt.legend((p1[0], p2[0]), ('PyZX+Qiskit Outperforms Qiskit', 'Equal Performance'))
        plt.show()
        return plt

    def plot_all(self):
        plot_depth(self)
        plot_size(self)
        plot_cx_and_cz(self)
        return None

#if __name__ == '__main__':
#    pass
