

import chisel3._


class ID_TO_REGS extends Bundle {
    val readEnable1=Output(Bool())
    val readEnable2=Output(Bool())
    val readAddr1=Output(UInt(5.W))
    val readAddr2=Output(UInt(5.W))
}

class ID_TO_IDEX extends Bundle {
    val inst_type=Output(UInt(6.W))
    val op1=Output(UInt(32.W))
    val op2=Output(UInt(32.W))
    val writeEnable=Output(Bool())
    val writeAddr=Output(UInt(5.W))
}


class ID_IO extends Bundle {
    val from_ifid=Flipped(new IFID_TO_ID())
    val from_regs=Flipped(new REGS_TO_ID())
    val to_regs=new ID_TO_REGS()
    val to_idex=new ID_TO_IDEX()
}


class ID extends Module {
    val io=IO(new ID_IO())

    val inst=io.from_ifid.inst
    val op=inst(31,26)
    val rs=inst(25,21)
    val rt=inst(20,16)
    val rd=inst(15,11)

    val imm=RegInit(0.U(32.W))

    io.to_regs.readEnable1:=RegInit(false.B)
    io.to_regs.readEnable2:=RegInit(false.B)
    io.to_regs.readAddr1:=RegInit(0.U(5.W))
    io.to_regs.readAddr2:=RegInit(0.U(5.W))
    io.to_idex.inst_type:=Global.INST_NOP
    io.to_idex.op1:=RegInit(0.U(32.W))
    io.to_idex.op2:=RegInit(0.U(32.W))
    io.to_idex.writeEnable:=RegInit(false.B)
    io.to_idex.writeAddr:=RegInit(0.U(5.W))


    when(io.to_regs.readEnable1) {
        io.to_idex.op1:=io.from_regs.data1
    }.elsewhen(io.to_regs.readEnable1===false.B) {
        io.to_idex.op1:=imm
    }.otherwise {
        io.to_idex.op1:=0.U(32.W)
    }

    when(io.to_regs.readEnable2) {
        io.to_idex.op2:=io.from_regs.data2
    }.elsewhen(io.to_regs.readEnable2===false.B) {
        io.to_idex.op2:=imm
    }.otherwise {
        io.to_idex.op2:=0.U(32.W)
    }


    when(io.from_ifid.inst===Global.ORI) {
        io.to_regs.readEnable1:=true.B
        io.to_regs.readAddr1:=rs
        imm:=inst(15,0)
        io.to_idex.writeEnable:=true.B
        io.to_idex.writeAddr:=rt
        io.to_idex.inst_type:=Global.INST_ORI
    }.otherwise {
    }

}
