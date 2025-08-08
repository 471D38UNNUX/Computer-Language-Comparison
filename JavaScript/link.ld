SECTIONS
{
  . = SIZEOF_HEADERS;
  .text  0x180000000 + . :
  {
    *(.text .data)
  }
  .bss :
  {
    *(.bss)
  }
  .edata :
  {
    *(.edata)
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