from instructions.i_type_ins.IIns import I_Ins
from RegList import RegList
from ctypes import *


class addi_ins(I_Ins):
    def __init__(self, instruction):
        super().__init__(instruction)

    def execute(self, cpu):
        # TODO integer overflow
        if self._imm & 0x8000:
            temp = c_int32(0xFFFF0000 | self._imm).value
        else:
            temp = c_int32(self._imm).value
        res = temp + c_int32(cpu[self._rs].low32).value 
        cpu[self._rt].low32 = c_int32(res).value


    def __str__(self):
        return f"addi ${RegList(self._rt).name}, ${RegList(self._rs).name}, {hex(self._imm)}"