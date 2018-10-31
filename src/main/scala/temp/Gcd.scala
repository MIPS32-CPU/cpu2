
// See README.md for license details.

package temp

import chisel3._

/**
  * Compute GCD using subtraction method.
  * Subtracts the smaller from the larger until register y is zero.
  * value in register x is then the GCD
  */



class Gcd extends Module {
    val io = IO(new Bundle {
        val in1=Input(UInt(32.W))
        val in2=Input(UInt(32.W))
        val in3=Input(UInt(32.W))
        val in4=Input(UInt(32.W))
        val out=Output(UInt(32.W))
    })
    val dxy1=Module(new Dxy())
    val dxy2=Module(new Dxy())
    val dxy3=Module(new Dxy())
    dxy1.io.in1:=io.in1
    dxy1.io.in2:=io.in2
    dxy2.io.in1:=io.in3
    dxy2.io.in2:=io.in4
    dxy3.io.in1:=dxy1.io.out
    dxy3.io.in2:=dxy2.io.out
    io.out:=dxy3.io.out
}

//object Gcd {
//
//    def ff(): Int = {
//        3
//    }
//
//    def main(args: Array[String]): Unit = {
//        chisel3.Driver.execute(args, () => new Gcd)
//        println(ff())
//    }
//}