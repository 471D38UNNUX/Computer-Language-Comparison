SECTIONS
{
  . = SIZEOF_HEADERS;
  .text  0x180000000 + . :
  {
    *(.text)
  }
  .edata :
  {
    *(.edata)
  }
  /DISCARD/ :
  {
    *(.debug* .drectve .note.GNU-stack .gnu.lto_* .gnu_object_only)
  }
  .idata BLOCK(1) :
  {
    LONG (0); LONG (0); LONG (0); LONG (0); LONG (0);
    . = ALIGN(8);
    *(.idata$6 .idata$7)
  }
}