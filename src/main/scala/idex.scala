

import chisel3._


class IDEX_IO extends Bundle {

}


class IDEX extends Module {
    val io=IO(new IDEX_IO())
}