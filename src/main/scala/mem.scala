

import chisel3._


class MEM_IO extends Bundle {

}


class MEM extends Module {
    val io=IO(new MEM_IO())
}