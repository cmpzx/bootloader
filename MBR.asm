[bits 16]
[org 0x7c00]

KERNELOFFSET equ 0x1000

;bios boot drive
mov [BOOT_DRIVE], dl

; stack
mov bp, 0x9000
mov sp,bp

%include "DISK.asm"
call lKernel

[bits 16]
lKernel:
  mov bx, KERNELOFFSET ; -> destination
  mov dh, 2 ; -> num sectors
  mov dl, [BOOT_DRIVE] ; -> disk


// Todo Diskloader
