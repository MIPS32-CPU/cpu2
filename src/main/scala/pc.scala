

import chisel3._


class PC_TO_IFID extends Bundle {
    val pc=Output(UInt(32.W))
}


class PC_IO extends Bundle {
    val to_ifid=new PC_TO_IFID()
}


class PC extends Module {
    val io=IO(new PC_IO)
    val r=RegInit(0.U(32.W))
    when(true.B) {
        r:=r+4.U
    }
    io.to_ifid.pc:=r
}