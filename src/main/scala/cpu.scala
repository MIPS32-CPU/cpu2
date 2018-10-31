

import chisel3._


class CPU extends Module {
    val io=IO(new Bundle{})
    val pc=Module(new PC())
    val ifid=Module(new IFID())
    pc.io.to_ifid <> ifid.io.from_pc
    ifid.io.inst:=0.U(32.W)
}


object CPU {
    def main(args: Array[String]): Unit = {
        chisel3.Driver.execute(args, () => new CPU)
        chisel3.Driver.execute(args, () => new PC)
        chisel3.Driver.execute(args, () => new IFID)
        chisel3.Driver.execute(args, () => new ID)
        chisel3.Driver.execute(args, () => new IDEX)
        chisel3.Driver.execute(args, () => new EX)
        chisel3.Driver.execute(args, () => new EXMEM)
        chisel3.Driver.execute(args, () => new MEM)
        chisel3.Driver.execute(args, () => new MEMWB)
        chisel3.Driver.execute(args, () => new REGS)
    }
}