---
title: "8085 Instruction Word Size and Addressing Modes"
summary: "One-, two- and three-byte 8085 instructions, little-endian operands, effective addresses and the complete addressing-mode framework."
date: 2025-05-09 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - electronics
  - microprocessors
  - "8085"
  - instruction-length
  - addressing-modes
  - machine-code
permalink: /msc/sem-iv/electronics/8085-instruction-word-size-addressing-modes/
hidden: true
---

An 8085 instruction occupies **one, two, or three consecutive memory bytes**. Its first byte is always the opcode; any following bytes carry immediate data, a port number, or a 16-bit address. This stored length is the instruction size. It is not the number of machine cycles, the number of clock states, or the width of the external address bus.

The 8085 is an 8-bit processor because its principal data path and accumulator operate on 8-bit quantities. It nevertheless has a 16-bit program counter, stack pointer, and address space. Consequently, “word” is potentially ambiguous: an 8085 data word is normally one byte, a memory address is two bytes, and an instruction word may contain one to three bytes. State the intended meaning whenever the distinction matters.

The classification and terminology below follow Intel's [8080/8085 Assembly Language Programming Manual](https://www.bitsavers.org/components/intel/8085/9800301C_8080_8085_Assembly_Language_Programming_Manual_Nov78.pdf). The complementary hardware context is in Intel's [MCS-80 User's Manual](https://www.bitsavers.org/components/intel/MCS80/98-153D__MCS-80_Users_Manual_Oct77.pdf).

## One-byte instructions

A one-byte instruction places all explicitly encoded information in the opcode byte. It may have no written operand, as in `CMA`, or it may encode one or two registers in bit fields, as in `ADD D` and `MOV A,C`.

Examples are

| Assembly instruction | Machine byte | Meaning |
|---|---:|---|
| `CMA` | `2FH` | Complement the accumulator; the accumulator is implied |
| `ADD D` | `82H` | Add register D to A |
| `MOV A,C` | `79H` | Copy C into A |
| `MOV A,M` | `7EH` | Read the byte at the address in HL into A |
| `PCHL` | `E9H` | Copy HL into the program counter |

The last two examples expose an essential point. One byte of instruction storage does not mean that execution uses only internal registers. `MOV A,M` has its complete specification in the opcode, yet it needs a separate memory-read machine cycle because `M` denotes the memory byte addressed by HL. `PCHL` is also one byte even though it changes a 16-bit register, because both the source and destination are implied by the opcode.

## Two-byte instructions

A two-byte instruction has one opcode byte followed by one operand byte. The second byte can be an 8-bit constant or an 8-bit I/O port address.

For example,

```text
MVI A,5AH       3E 5A
ADI 24H         C6 24
IN 80H          DB 80
OUT 21H         D3 21
```

If `MVI A,5AH` begins at address `2000H`, the opcode `3EH` is at `2000H`, the immediate byte `5AH` is at `2001H`, and the next instruction begins at `2002H`. The program counter advances after each fetch, so it points to the next instruction after the second byte has been read.

The second byte of `IN 80H` is not data to be loaded into A. It selects I/O port `80H`; the actual input byte is obtained during a later I/O-read machine cycle. Thus equal instruction length does not imply equal operand meaning or equal bus activity.

## Three-byte instructions and byte order

A three-byte instruction contains an opcode followed by a 16-bit quantity. The 8085 stores the low-order byte first and the high-order byte second:

$$W=256H+L,$$

where $L$ is the byte at address $PC+1$ and $H$ is the byte at $PC+2$. This is little-endian order for an immediate word or a direct address.

```text
LXI H,2050H     21 50 20
LDA 2500H       3A 00 25
JMP 1234H       C3 34 12
CALL 4080H      CD 80 40
```

For `JMP 1234H`, the processor reads `C3H`, then `34H`, then `12H`, reconstructs $12\_{16}\times100\_{16}+34\_{16}=1234\_{16}$, and loads that value into PC. The low-byte-first rule is about storage order; the written hexadecimal address retains its usual high-to-low notation.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/instruction-length-layouts.png' | relative_url }}" alt="Byte layouts of representative one-byte, two-byte and three-byte 8085 instructions">
  <figcaption>Instruction length is determined by the bytes stored in program memory. A three-byte operand is kept low byte first, although the 16-bit value is conventionally written high byte first.</figcaption>
</figure>

## Addressing mode as an effective-address rule

An addressing mode states how an instruction identifies its operand. A useful formal description is

$$\text{operand}=M[EA],$$

when the operand is in memory, where $EA$ is the effective address. For a register or an immediate instruction no data-memory effective address is required. The mode is an interpretation rule, not merely the visible punctuation of the assembly statement.

Intel groups the basic forms as implied, register, immediate, direct, and register indirect addressing, with some instructions combining modes.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/addressing-mode-effective-address.png' | relative_url }}" alt="8085 addressing modes showing how implied, register, immediate, direct and register-indirect instructions obtain operands">
  <figcaption>The opcode selects the addressing rule. Direct addressing takes the effective address from instruction bytes, whereas register-indirect addressing takes it from a register pair.</figcaption>
</figure>

## Implied addressing

In implied addressing the operation itself fixes the operand, so no operand field is permitted. `CMA` acts on A, `RAL` rotates A through carry, `STC` sets carry, `XCHG` exchanges DE with HL, and `RIM` reads interrupt-mask and serial-input status into A. The absence of a written operand does not mean absence of data; it means that no choice of operand remains for the programmer.

Stack and return operations can also contain implicit resources. `RET` obtains a new program counter from the memory stack addressed by SP. Intel therefore describes some operations in terms of implied or register-indirect behavior depending on whether the programmer's notation or the complete hardware action is being emphasized.

## Register addressing

In register addressing an operand is in a named CPU register. Examples include `MOV D,E`, `INR H`, `SUB B`, and `CMP L`. Register access normally avoids an extra data-memory cycle. In `MOV D,E`, the destination and source fields are both embedded in the opcode `53H`:

$$53_{16}=010\,010\,011_2=01\;DDD\;SSS,$$

with destination code `010` for D and source code `011` for E.

Register-pair instructions use BC, DE, HL, or SP as a 16-bit unit. `INX H` increments HL, while `DAD B` adds BC to HL. `PSW` is a special stack-pair name for the accumulator and flags; it is not a general 16-bit arithmetic register.

## Immediate addressing

In immediate addressing the constant is part of the instruction stream. `MVI C,7FH` supplies an 8-bit value, `ADI 09H` supplies an 8-bit addend, and `LXI SP,30FFH` supplies a 16-bit value. The processor reads the constant from memory locations following the opcode, but those bytes are program data embedded in the instruction, not data-memory addresses.

This distinction resolves a common error: `LXI H,2500H` loads the numerical value `2500H` into HL; it does not read the contents of memory location `2500H`. Afterward, `MOV A,M` would use HL indirectly and read that location.

## Direct addressing

In direct addressing the instruction contains the address needed by the operation. For `LDA 2500H`,

$$EA=2500_{16},\qquad A\leftarrow M[2500_{16}].$$

`STA`, `LHLD`, and `SHLD` similarly contain direct memory addresses. Jumps, calls, and conditional branches contain the direct destination that can replace PC. The encoding occupies three bytes because the address is 16 bits.

`LHLD 2500H` reads two adjacent bytes: $L\leftarrow M[2500H]$ and $H\leftarrow M[2501H]$. `SHLD` performs the inverse writes. The order reflects the convention that the low byte of a 16-bit quantity resides at the lower memory address.

## Register-indirect addressing

Here a register pair holds the effective address. `MOV A,M` means $A\leftarrow M[HL]$, and `MOV M,C` means $M[HL]\leftarrow C$. `LDAX B` uses BC as the address; `LDAX D` uses DE. Their store counterparts are `STAX B` and `STAX D`. The assembler symbol `M` is not a physical register and does not contain data independently of memory.

Register-indirect addressing is compact: the address does not occupy instruction bytes and can be advanced in a loop. A byte-copy loop can increment HL and DE after each transfer rather than rebuild two direct addresses in every instruction.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/little-endian-instruction-fetch.png' | relative_url }}" alt="Program-counter sequence for fetching LXI H comma 2050H and reconstructing its little-endian immediate word">
  <figcaption>For a three-byte instruction, sequential fetches advance PC through opcode, low operand byte and high operand byte before the 16-bit operand is assembled internally.</figcaption>
</figure>

## Combined modes, I/O addressing and stack effects

Some instructions perform more than one addressing action. `CALL 4080H` obtains its branch destination directly from the instruction, but it stores the return address indirectly through SP. The 8085 first forms the return address of the next instruction, decrements SP, and writes the two return bytes to the stack before placing `4080H` in PC. `RET` reverses the transfer through the stack.

`IN port` and `OUT port` carry an 8-bit port number in the second byte. They are immediate with respect to the encoded port selector, while the actual data transfer occurs in I/O space. Because the 8085 exposes an 8-bit port field, these instructions directly select 256 port numbers from `00H` through `FFH`. Memory-mapped I/O, by contrast, uses ordinary memory instructions and one of the memory addressing modes.

## Instruction length is independent of execution cost

An instruction fetch is a machine cycle, but further cycles depend on the action. `MOV B,C` is one byte and needs no external operand transfer. `MOV B,M` is also one byte but requires a memory read. `MVI M,5AH` occupies two bytes and needs both the immediate-byte read and a memory write through HL. `LDA 2500H` occupies three bytes and performs a separate data read after fetching its address bytes. `CALL` adds stack writes, and a conditional call may have different timing depending on whether the condition is true.

Therefore, never infer timing from byte length alone. Keep three quantities separate:

$$\text{instruction bytes},\qquad \text{machine cycles},\qquad \text{T-states}.$$

The program counter advances by the stored instruction length during sequential fetch. Memory and I/O transactions performed by execution do not add to that length. This separation allows exact program layout, bus analysis, and timing analysis to be done without mixing distinct architectural ideas.

## Preparation questions

1. Distinguish processor word size, address width, instruction length, machine cycles, and T-states for the 8085.
2. Place the bytes of `LXI D,4A20H` in memory beginning at `3000H`, and give the address of the next instruction.
3. Explain why `MOV A,M` is a one-byte instruction but normally requires a data-memory read.
4. For each of `CMA`, `MOV B,E`, `MVI B,7FH`, `LDA 2400H`, and `STAX D`, identify the addressing mode and source of the operand.
5. Compare `LXI H,2500H` with `LHLD 2500H`; state exactly what value or bytes each instruction transfers.
6. Explain why `CALL` is naturally described as combining direct and register-indirect addressing.
7. Encode the 16-bit operand bytes of `JMP 8C35H` and explain their order in memory.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/electronics/unit-3/8085-instruction-word-size-addressing-modes.mac' | relative_url }})
