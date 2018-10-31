

import chisel3._


class ID_IO extends Bundle {

}


class ID extends Module {
    val io=IO(new ID_IO())
}
