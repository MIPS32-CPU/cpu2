

import chisel3._


class PC extends Module {
    val io=IO(new Bundle {

    })
}


object PC {
    def main(args: Array[String]): Unit = {
        chisel3.Driver.execute(args, () => new PC)
    }
}