# asmsyntax=as

# Sablona pro zdrojovy kod Linuxoveho programu naprogramovaneho
# v assembleru GNU AS.

.intel_syntax noprefix

# Linux kernel system call table
sys_exit=60

.section .data

.section .bss

.section .text
        .global _start          # tento symbol ma byt dostupny i linkeru

_start:
        mov   eax, sys_exit     # cislo sycallu pro funkci "exit"
        mov   edi, 0            # exit code = 0
        syscall                 # volani Linuxoveho kernelu

