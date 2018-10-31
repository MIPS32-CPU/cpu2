

import chisel3._


class EX_TO_EXMEM extends Bundle {
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
    val result=Output(UInt(32.W))
}


class EX_IO extends Bundle {
    val from_idex=Flipped(new IDEX_TO_EX())
    val to_exmem=new EX_TO_EXMEM()
}


class EX extends Module {
    val io=IO(new EX_IO())

    io.to_exmem.writeEnable:=io.from_idex.writeEnable
    io.to_exmem.writeAddr:=io.from_idex.writeAddr

    when(io.from_idex.inst_type===Global.INST_ORI) {
        io.to_exmem.result:=io.from_idex.op1 | io.from_idex.op2
    }.otherwise {
        io.to_exmem.result:=0.U(32.W)
    }
}