

import chisel3._


class MEMWB_TO_REGS extends Bundle {
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
    val writeData=Output(UInt(32.W))
}


class MEMWB_IO extends Bundle {
    val from_mem=Flipped(new MEM_TO_MEMWB())
    val to_regs=new MEMWB_TO_REGS()
}


class MEMWB extends Module {
    val io=IO(new MEMWB_IO())

    io.to_regs.writeEnable:=RegNext(io.from_mem.writeEnable, false.B)
    io.to_regs.writeAddr:=RegNext(io.from_mem.writeAddr, 0.U(5.W))
    io.to_regs.writeData:=RegNext(io.from_mem.result, 0.U(32.W))
}