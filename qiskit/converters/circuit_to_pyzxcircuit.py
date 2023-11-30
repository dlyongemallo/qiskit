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

"""Helper function for converting a circuit to a dag"""

import pyzx
import pyzx.circuit.gates as pyzxgates


def circuit_to_pyzxcircuit(qc):
    """Break up a ``QuantumCircuit`` into smaller pieces that can be input
       to circuit_to_pyzxcircuit.

    Args:
        qc (QuantumCircuit): the input circuit.

    Return:
        list: a list of QuantumCircuit objects that make up qc
    """
    # loop through everyhting, barrier before anything not understood
    num_pyzxcircuits = 0
    pyzxcircuit_list = []
    is_qc = [0, -1, 5, 6, -1, 20]
    final = [qc.data[0], pyzxcircuit_list[0], qc.data[5], qc.data[6], pyzxcircuit_list[1], qc.data[20]]
    # for inverse, keep track of index_in_pyzxcircuit_list
    for i in range(0,len(qc.data)):
        gate = qc.data[i][0]
        gatequbits = qc.data[i][1]
        pyzxgate = gate_to_pyzxgate(gate, gatequbits, qc.qubits)
        if pyzxgate is None:  # gate not in pyzxgate set
            is_qc += [i]
        else:
            pyzxcircuit.add_gate

    pyzxcircuit = Circuit(len(qc.qubits), qc.name + '_' + str(num_pyzxcircuits))

    pyzxcircuit.add_gate(gate_to_pyzxgate(gate))
    return circuit_list


    for register in circuit.qregs:
        dagcircuit.add_qreg(register)
    for register in circuit.cregs:
        dagcircuit.add_creg(register)

    for instruction, qargs, cargs in circuit.data:
        dagcircuit.apply_operation_back(instruction.copy(), qargs, cargs, instruction.control)

    return pyzxcircuit


def gate_to_pyzxgate(gate, gatequbits, qcqubits):
    """Converts a Qiskit ``Gate`` to a PyZX Gate(s).  If not convertible, returns None.

    Args:
        gate (Instruction): the input gate, which may be a Gate
        qcqubits (list): qc.qubits, a list of Qubits

    Return:
        pyzxgate or list: the PyZX gate(s) corresponding to the input gate.
    """
    if gate.name == "rx":
        return pyzxgates.XPhase(qubits2idxs(gatequbits, qcqubits), float(gate.params[0]))
    elif gate.name == "x":
        return pyzxgates.NOT(qubits2idxs(gatequbits, qcqubits))
    elif gate.name == "rz":
        return pyzxgates.ZPhase(qubits2idxs(gatequbits, qcqubits), float(gate.params[0]))
    elif gate.name == "z":
        return pyzxgates.Z(qubits2idxs(gatequbits, qcqubits))
    elif gate.name == "s":
        return pyzxgates.S(qubits2idxs(gatequbits, qcqubits))
    elif gate.name == "sdg":
        return pyzxgates.S(qubits2idxs(gatequbits, qcqubits), True)
    elif gate.name == "t":
        return pyzxgates.T(qubits2idxs(gatequbits, qcqubits))
    elif gate.name == "tdg":
        return pyzxgates.T(qubits2idxs(gatequbits, qcqubits), True)
    elif gate.name == "h":
        return pyzxgates.HAD(qubits2idxs(gatequbits, qcqubits))
    elif gate.name == "cx":
        idxs = qubits2idxs(gatequbits, qcqubits)
        return pyzxgates.CNOT(idxs[0], idxs[1])
    elif gate.name == "cz":
        idxs = qubits2idxs(gatequbits, qcqubits)
        return pyzxgate.CZ(idxs[0], idxs[1])
    elif gate.name == "swap":
        idxs = qubits2idxs(gatequbits, qcqubits)
        return pyzxgates.SWAP(idxs[0], idxs[1])
    return None


def qubits2idxs(gatequbits, qcqubits):
    """
    Returns the indices of the gate qubits with respect to qcqubits, the QuantumCircuit's qubits.

    Args:
        gatequbits(QuantumRegister or list): qubit of an instruction
        qcqubits(list): a list of Qubits

    Returns:
        list or range: the indices
    """
    ret = [qcqubits[gatequbit] for gatequbit in gatequbits]
    return ret[0] if len(ret) == 1 else ret
