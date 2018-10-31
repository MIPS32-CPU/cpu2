

import chisel3._


class REGS_IO extends Bundle {
}


class REGS extends Module {
    val io=IO(new REGS_IO())
}
