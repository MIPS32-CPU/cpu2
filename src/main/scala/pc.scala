

import chisel3._


class PC_IO extends Bundle {
    val pc_o=Output(UInt(32.W))
}


class PC extends Module {
    val io=IO(new PC_IO)
    val r=RegInit(0.U(32.W))
    when(true.B) {
        r:=r+4.U
    }
    io.pc_o:=r
}