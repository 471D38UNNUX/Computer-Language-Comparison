SECTIONS
{
  . = SIZEOF_HEADERS;
  .text  0x140000000 + . :
  {
     *(.text. .xdata .pdata .rdata* .data .bss)
  }
  /DISCARD/ :
  {
    *(.debug* .drectve .note.GNU-stack .gnu.lto_* .gnu_object_only)
  }
  .idata :
  {
    *(.idata$2)
    SORT(*)(.idata$4)
    __IAT_start__ = .;
    SORT(*)(.idata$5)
    __IAT_end__ = .;
    *(.idata$6 .idata$7)
  }
}
