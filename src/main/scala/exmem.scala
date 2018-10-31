

import chisel3._


class EXMEM_IO extends Bundle {

}


class EXMEM extends Module {
    val io=IO(new EXMEM_IO())
}