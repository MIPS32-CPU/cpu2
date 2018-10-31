

import chisel3._


class MEMWB_IO extends Bundle {

}


class MEMWB extends Module {
    val io=IO(new MEMWB_IO())
}