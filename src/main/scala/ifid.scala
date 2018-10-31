

import chisel3._


class IFID_TO_ID extends Bundle {
    val pc=Output(UInt(32.W))
    val inst=Output(UInt(32.W))
}


class IFID_IO extends Bundle {
    val from_pc=Flipped(new PC_TO_IFID())
    val inst=Input(UInt(32.W))
    val to_id=new IFID_TO_ID()
}


class IFID extends Module {
    val io=IO(new IFID_IO())

    val r1=RegNext(io.from_pc.pc, 0.U(32.W))
    io.to_id.pc:=r1

    val r2=RegNext(io.inst, 0.U(32.W))
    io.to_id.inst:=r2
}