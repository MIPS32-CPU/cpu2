

import chisel3._


class IDEX_TO_EX extends Bundle {
    val inst_type=Output(UInt(6.W))
    val op1=Output(UInt(32.W))
    val op2=Output(UInt(32.W))
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
}


class IDEX_IO extends Bundle {
    val from_id=Flipped(new ID_TO_IDEX())
    val to_ex=new IDEX_TO_EX()
}


class IDEX extends Module {
    val io=IO(new IDEX_IO())

    io.to_ex.inst_type:=RegNext(io.from_id.inst_type, 0.U(6.W))
    io.to_ex.op1:=RegNext(io.from_id.op1, 0.U(32.W))
    io.to_ex.op2:=RegNext(io.from_id.op2, 0.U(32.W))
    io.to_ex.writeEnable:=RegNext(io.from_id.writeEnable, false.B)
    io.to_ex.writeAddr:=RegNext(io.from_id.writeAddr, 0.U(5.W))

}