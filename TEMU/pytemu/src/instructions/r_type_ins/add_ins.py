import instructions.r_type_ins.RIns as RIns
from RegList import RegList
from ctypes import *


class add_ins(RIns.R_Ins):
    def __init__(self, instruction):
        super().__init__(instruction)

    def execute(self, cpu):
        #TODO integer overflow
        res = (c_int32(cpu[self._rs].low32).value + c_int32(cpu[self._rt].low32).value) & 0xFFFFFFFF
        cpu[self._rd].low32 = c_int32(res).value

    def __str__(self):
        return f"add ${RegList(self._rd).name}, ${RegList(self._rs).name}, ${RegList(self._rt).name}"
