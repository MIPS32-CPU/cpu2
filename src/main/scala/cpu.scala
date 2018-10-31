

import chisel3._


class CPU extends Module {
    val io=IO(new Bundle {
    })
}


object CPU {
    def main(args: Array[String]): Unit = {
        chisel3.Driver.execute(args, () => new CPU)
        chisel3.Driver.execute(args, () => new PC)
    }
}