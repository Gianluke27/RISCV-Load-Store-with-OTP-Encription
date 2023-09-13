ENTRY(_start)

MEMORY
{
  /* Define the memory regions */
  ram : ORIGIN = 0x80000000, LENGTH = 64K /* 64KB of RAM starting at 0x80000000 */
}

SECTIONS
{
    . = ORIGIN(ram);
    _start :
    {
    KEEP(*(.start))
    } > ram

    /* The entry point of the program */
    .text :
    {
    *(.text)
    } > ram

    /* Any initialized data goes in the .data section */
    .data :
    {
    *(.data)
    } > ram

    /* Any uninitialized data goes in the .bss section */
    .bss :
    {
    *(.bss)
    } > ram
}