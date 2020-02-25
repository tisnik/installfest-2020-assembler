# asmsyntax=as

# Sablona pro zdrojovy kod Linuxoveho programu naprogramovaneho
# v assembleru GNU AS.

# Linux kernel system call table
sys_exit=1

.section .data

.section .bss

.section .text
        .global _start          # tento symbol ma byt dostupny i linkeru

_start:
        movl  $sys_exit,%eax    # cislo sycallu pro funkci "exit"
        movl  $0,%ebx           # exit code = 0
        int   $0x80             # volani Linuxoveho kernelu

