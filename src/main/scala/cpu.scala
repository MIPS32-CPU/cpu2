

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
    }
}