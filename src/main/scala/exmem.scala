

import chisel3._


class EXMEM_TO_MEM extends Bundle {
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
    val result=Output(UInt(32.W))
}


class EXMEM_IO extends Bundle {
    val from_ex=Flipped(new EX_TO_EXMEM())
    val to_mem=new EXMEM_TO_MEM()
}


class EXMEM extends Module {
    val io=IO(new EXMEM_IO())

    io.to_mem.writeEnable:=RegNext(io.from_ex.writeEnable, false.B)
    io.to_mem.writeAddr:=RegNext(io.from_ex.writeAddr, 0.U(5.W))
    io.to_mem.result:=RegNext(io.from_ex.result, 0.U(32.W))
}