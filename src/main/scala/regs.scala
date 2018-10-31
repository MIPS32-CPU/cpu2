

import chisel3._


class REGS_TO_ID extends Bundle {
    val data1=Output(UInt(32.W))
    val data2=Output(UInt(32.W))
}


class REGS_IO extends Bundle {
    val from_id=Flipped(new ID_TO_REGS())
    val from_memwb=Flipped(new MEMWB_TO_REGS())
    val to_id=new REGS_TO_ID()
}


class REGS extends Module {
    val io=IO(new REGS_IO())

    val register=Mem(32,UInt(32.W))

    // write to registers
    val r0=RegNext(io.from_memwb.writeData, 0.U(32.W))
    when(io.from_memwb.writeEnable===true.B && io.from_memwb.writeAddr=/=0.U(5.W)) {
        register(io.from_memwb.writeAddr):=r0
    }

    // read register 1
    io.to_id.data1:=RegInit(0.U(32.W))
    when(io.from_id.readEnable1===false.B) {
        io.to_id.data1:=0.U
    }.elsewhen(io.from_id.readAddr1===0.U(5.W)) {
        io.to_id.data1:=0.U
    }.elsewhen(io.from_memwb.writeEnable && io.from_id.readAddr1===io.from_memwb.writeAddr) {
        io.to_id.data1:=io.from_memwb.writeData
    }.otherwise {
        io.to_id.data1:=register(io.from_id.readAddr1)
    }

    // read register 2
    io.to_id.data2:=RegInit(0.U(32.W))
    when(io.from_id.readEnable2===false.B) {
        io.to_id.data2:=0.U
    }.elsewhen(io.from_id.readAddr2===0.U(5.W)) {
        io.to_id.data2:=0.U
    }.elsewhen(io.from_memwb.writeEnable && io.from_id.readAddr2===io.from_memwb.writeAddr) {
        io.to_id.data2:=io.from_memwb.writeData
    }.otherwise {
        io.to_id.data2:=register(io.from_id.readAddr2)
    }

}
