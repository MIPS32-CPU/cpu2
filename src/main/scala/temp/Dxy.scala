package temp

import chisel3._

class Dxy extends Module {
    val io=IO(new Bundle {
        val in1=Input(UInt(32.W))
        val in2=Input(UInt(32.W))
        val out=Output(UInt(32.W))
    })
    val r=RegNext(io.in2)
    io.out:=r
}
