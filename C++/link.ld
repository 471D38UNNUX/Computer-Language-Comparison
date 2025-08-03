SECTIONS
{
  . = SIZEOF_HEADERS;
  .text  __image_base__ + ( __section_alignment__ < 0x1000 ? . : __section_alignment__ ) :
  {
    *(.text* .xdata* .pdata* .data .rsrc .ctors*)
  }
  .rdata BLOCK(__section_alignment__) :
  {
    *(.rdata)
    __rt_psrelocs_start = .;
    *(.rdata_runtime_pseudo_reloc)
    __rt_psrelocs_end = .;
  }
  __RUNTIME_PSEUDO_RELOC_LIST_END__ = __rt_psrelocs_end;
  __RUNTIME_PSEUDO_RELOC_LIST__ = __rt_psrelocs_start;
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
