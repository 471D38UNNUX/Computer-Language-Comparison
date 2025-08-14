SECTIONS
{
  . = SIZEOF_HEADERS;
  .text  0x400000 + ( __section_alignment__ < 0x1000 ? . : __section_alignment__ ) :
  {
    *(.text* *tors* .xdata* .pdata* .rdata*)
  }
  .data BLOCK(__section_alignment__) :
  {
    *(.data)
  }
  .bss BLOCK(__section_alignment__) :
  {
    *(.bss)
  }
  /DISCARD/ :
  {
    *(.debug* .drectve .note.GNU-stack .gnu.lto_* .gnu_object_only)
  }
  .idata BLOCK(__section_alignment__) :
  {
    *(.idata$2)
    SORT(*)(.idata$4)
    __IAT_start__ = .;
    SORT(*)(.idata$5)
    __IAT_end__ = .;
    *(.idata$6 .idata$7)
  }
}