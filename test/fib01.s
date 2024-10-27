.intel_syntax noprefix

.globl fib
fib:
  sub rsp, 24
  xor eax, eax
  mov ecx, 1
  0:
    xadd rax, rcx

    mov [rsp + 16], rax
    mov [rsp + 8], rdi
    mov [rsp], rcx
    mov rsi, rax
    lea rdi, print_fmt
    xor eax, eax
    call printf
    mov rax, [rsp + 16]
    mov rdi, [rsp + 8]
    mov rcx, [rsp]

    dec rdi
    jnz 0b
  add rsp, 24
  ret

.globl main
main:
  mov edi, 70
  call fib

  xor eax, eax
  ret

.section .rodata
print_fmt: .asciz "%lu\n"