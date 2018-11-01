

import chisel3._
import chisel3.util._


object Global {
    def NOP                = BitPat("b00000000000000000000000000000000")
    def ORI                = BitPat("b001101??????????????????????????")

    val INST_ORI        =1.U(6.W)
    val INST_OR         =2.U(6.W)
    val INST_NOP        =3.U(6.W)

}
