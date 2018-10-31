

import chisel3._


class ID_TO_REGS extends Bundle {
    val readEnable1=Output(Bool())
    val readEnable2=Output(Bool())
    val readAddr1=Output(UInt(5.W))
    val readAddr2=Output(UInt(5.W))
}


class ID_IO extends Bundle {

}


class ID extends Module {
    val io=IO(new ID_IO())
}
