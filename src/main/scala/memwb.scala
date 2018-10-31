

import chisel3._


class MEMWB_TO_REGS extends Bundle {
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
    val writeData=Output(UInt(32.W))
}


class MEMWB_IO extends Bundle {

}


class MEMWB extends Module {
    val io=IO(new MEMWB_IO())
}