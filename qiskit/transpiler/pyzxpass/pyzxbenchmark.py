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

"""Benchmark PyZX qasm-to-qasm transpiler pass"""

from datetime import datetime
import numpy as np
import pickle
import pyzx
from pyzx.circuit.qiskittranspilerpass import qiskit_transpiler_pass
import qiskit
from qiskit import BasicAer
from qiskit import execute
from qiskit.quantum_info.operators.predicates import matrix_equal


def pyzxbenchmark(qcs, benchmarkname, alwaysDecompose=False, names=[]):
    """time, benchmark, opts, params"""
    simulator = BasicAer.get_backend('unitary_simulator')
    time_str = datetime.now().isoformat()
    now_dict = {'time': time_str, 'benchmark': benchmarkname, 'size': np.zeros((4,0)), 'depth': np.zeros((4,0)), 'c count': np.zeros((4,0))}
    for i in range(len(qcs)):
        qc = qcs[i]
        if alwaysDecompose:
            pyzx_qc = qc.from_qasm_str(qiskit_transpiler_pass(qc.decompose().qasm()))
        else:
            pyzx_co_qasm = qiskit_transpiler_pass(qc.qasm())
            pyzx_de_qasm = qiskit_transpiler_pass(qc.decompose().qasm())
            if pyzx_co_qasm is None and pyzx_de_qasm is None:
                continue
            elif pyzx_co_qasm is None:
                pyzx_qc = qc.from_qasm_str(pyzx_de_qasm)
            elif pyzx_de_qasm is None:
                pyzx_qc = qc.from_qasm_str(pyzx_co_qasm)
            else:
                pyzx_co_qc = qc.from_qasm_str(pyzx_co_qasm)
                pyzx_de_qc = qc.from_qasm_str(pyzx_de_qasm)
                pyzx_qc = pyzx_co_qc if pyzx_co_qc.depth() <= pyzx_de_qc.depth() else pyzx_de_qc
        opt2_qc = qiskit.transpile(qc, basis_gates=['u3', 'cx'], optimization_level=2)
        both_qc = qiskit.transpile(pyzx_qc, basis_gates=['u3', 'cx'], optimization_level=2)
        now_dict['size'] = np.hstack((now_dict['size'], np.array([[circ.size()] for circ in [qc, pyzx_qc, opt2_qc, both_qc]])))
        now_dict['depth'] = np.hstack((now_dict['depth'], np.array([[circ.depth()] for circ in [qc, pyzx_qc, opt2_qc, both_qc]])))
        now_dict['c count'] = np.hstack((now_dict['c count'], np.array([[circ.qasm().count('cx') + circ.qasm().count('cz')] for circ in [qc, pyzx_qc, opt2_qc, both_qc]])))
        qc = qc.from_qasm_str('\n'.join(['' if line.startswith('measure') else line for line in qc.qasm().splitlines()]))
        pyzx_qc = pyzx_qc.from_qasm_str('\n'.join(['' if line.startswith('measure') else line for line in pyzx_qc.qasm().splitlines()]))
        #result = execute([qc, pyzx_qc], simulator).result()
        #qc_mat, pyzx_qc_mat = result.get_unitary(qc), result.get_unitary(pyzx_qc)
        #assert matrix_equal(qc_mat, pyzx_qc_mat, ignore_phase=True)
        #print(pyzx_qc.qasm())
        #print(both_qc.qasm())
        if len(names) > 0:
            fo = open('outputqasms/pyzx/'+names[i]+'.qasm','w+')
            fo.write(pyzx_qc.qasm())
            fo.close()
            fo = open('outputqasms/opt2/'+names[i]+'.qasm','w+')
            fo.write(opt2_qc.qasm())
            fo.close()
            fo = open('outputqasms/both/'+names[i]+'.qasm','w+')
            fo.write(both_qc.qasm())
            fo.close()

    pickle.dump(now_dict, open('now_dict_pickles/' + benchmarkname + '/' + time_str + '.p', 'wb'))
    [print(key, ':\n', value) for key, value in now_dict.items()]
    return now_dict
