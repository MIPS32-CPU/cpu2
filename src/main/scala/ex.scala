

import chisel3._


class EX_IO extends Bundle {

}


class EX extends Module {
    val io=IO(new EX_IO())
}