

import chisel3._


class CPU_IO extends Bundle {
    val rom_data=Input(UInt(32.W))
    val rom_addr=Output(UInt(32.W))
}


class CPU extends Module {
    val io=IO(new CPU_IO)

    val pc=Module(new PC())
    val ifid=Module(new IFID())
    val id=Module(new ID())
    val regs=Module(new REGS())
    val idex=Module(new IDEX())
    val ex=Module(new EX())
    val exmem=Module(new EXMEM())
    val mem=Module(new MEM())
    val memwb=Module(new MEMWB())

    pc.io.to_ifid <> ifid.io.from_pc
    ifid.io.to_id <> id.io.from_ifid
    id.io.to_regs <> regs.io.from_id
    regs.io.to_id <> id.io.from_regs
    id.io.to_idex <> idex.io.from_id
    idex.io.to_ex <> ex.io.from_idex
    ex.io.to_exmem<> exmem.io.from_ex
    exmem.io.to_mem<>mem.io.from_exmem
    mem.io.to_memwb<>memwb.io.from_mem
    memwb.io.to_regs<>regs.io.from_memwb

    // datapath
    ex.io.to_exmem<> id.io.from_ex
    mem.io.to_memwb<>id.io.from_mem

    ifid.io.inst:=io.rom_data
    io.rom_addr:=pc.io.to_ifid.pc

}


object CPU {
    def main(args: Array[String]): Unit = {
        val s=Array("--target-dir","verilog","--no-dce")
        chisel3.Driver.execute(s, () => new CPU)
//        chisel3.Driver.execute(s, () => new PC)
//        chisel3.Driver.execute(s, () => new IFID)
//        chisel3.Driver.execute(s, () => new ID)
//        chisel3.Driver.execute(s, () => new IDEX)
//        chisel3.Driver.execute(s, () => new EX)
//        chisel3.Driver.execute(s, () => new EXMEM)
//        chisel3.Driver.execute(s, () => new MEM)
//        chisel3.Driver.execute(s, () => new MEMWB)
//        chisel3.Driver.execute(s, () => new REGS)
    }
}