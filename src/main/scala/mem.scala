

import chisel3._


class MEM_TO_MEMWB extends Bundle {
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
    val result=Output(UInt(32.W))
}


class MEM_IO extends Bundle {
    val from_exmem=Flipped(new EXMEM_TO_MEM)
    val to_memwb=new MEM_TO_MEMWB()
}


class MEM extends Module {
    val io=IO(new MEM_IO())
    io.to_memwb <> io.from_exmem
}