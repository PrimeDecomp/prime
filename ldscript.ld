ENTRY(__start)
_SDA_BASE_ = 0x805AEBC0;
_SDA2_BASE_ = 0x805B1D20;
PHDRS
{
    init PT_LOAD;
    text PT_LOAD;
    extab PT_LOAD;
    extabindex PT_LOAD;
    ctors PT_LOAD;
    dtors PT_LOAD;
    rodata PT_LOAD;
    data PT_LOAD;
    bss PT_LOAD;
    sdata PT_LOAD;
    sbss PT_LOAD;
    sdata2 PT_LOAD;
    sbss2 PT_LOAD;
}
SECTIONS
{
    .init 0x80003100 : { *(.init) } : init
    .text 0x80003640 : { *(.text) } : text
    .extab 0x800035A0 : { *(.extab) } : extab
    .extabindex 0x800035E0 : { *(.extabindex) } : extabindex
    .ctors 0x803CB1C0 : { *(.ctors) } : ctors
    .dtors 0x803CB380 : { *(.dtors) } : dtors
    .rodata 0x803CB3A0 : { *(.rodata) } : rodata
    .data 0x803D8D60 : { *(.data) } : data
    .bss 0x803F7560c (NOLOAD) : { *(.bss) } : bss
    .sdata 0x805A6BC0 : { *(.sdata) } : sdata
    .sbss 0x805A8C20 (NOLOAD) : { *(.sbss) } : sbss
    .sdata2 0x805A9D20 : { *(.sdata2) } : sdata2
    .sbss2 0x805AF460 (NOLOAD) : { *(.sbss2) } : sbss2
}
