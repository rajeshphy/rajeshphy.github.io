---
title: "8085 Opcodes, Operands, Mnemonics and Machine Code"
summary: "Precise assembly-language terminology, structured 8085 opcode fields, object-byte generation and worked instruction encodings."
date: 2025-05-07 09:00:00 +0530
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
  - opcodes
  - mnemonics
  - operands
  - machine-code
permalink: /msc/sem-iv/electronics/8085-opcodes-operands-mnemonics-machine-code/
hidden: true
---

An 8085 program can be described at three connected levels. **Assembly source** uses symbols such as `MOV A,C`; the **assembler** translates that statement; **machine code** is the resulting byte sequence, `79H` in this example, which the processor fetches from memory. A mnemonic is readable notation, an operand identifies data or a location, and an opcode byte is the binary pattern decoded by the processor.

The word *opcode* is used in two nearby senses. In an assembly source line, the opcode field contains a mnemonic such as `MOV`. In the object program, the operation code is a numeric byte such as `79H`. The context must make clear whether “opcode” means the source-language field or the encoded byte.

The terminology and encodings here follow Intel's primary [8080/8085 Assembly Language Programming Manual](https://www.bitsavers.org/components/intel/8085/9800301C_8080_8085_Assembly_Language_Programming_Manual_Nov78.pdf), with system-level context from the [MCS-80 User's Manual](https://www.bitsavers.org/components/intel/MCS80/98-153D__MCS-80_Users_Manual_Oct77.pdf).

## Anatomy of an assembly statement

A conventional source line contains up to four logical fields:

```text
LOOP:   ADD M       ; add the byte addressed by HL to A
label   mnemonic operand                 comment
```

The optional label gives a symbolic name to the current location. `ADD` is the mnemonic in the source opcode field. `M` is the operand. Text after the comment delimiter documents the program and produces no processor byte. Whitespace and punctuation are assembler syntax; they are not stored as ASCII characters in the executable instruction.

A statement may contain two operands, as in `MOV D,E` or `MVI C,7FH`. Their order is instruction-specific. For data-transfer instructions Intel notation normally writes destination first and source second:

$$\texttt{MOV D,E}:\qquad D\leftarrow E.$$

For `MVI C,7FH`, C is the destination and `7FH` is immediate data. In contrast, `STA 2500H` has one written operand: a direct address. The source A is implied by the instruction definition.

## Mnemonics express operations

A mnemonic is a compact name chosen to suggest the instruction's action. Important families include:

- data transfer: `MOV`, `MVI`, `LXI`, `LDA`, `STA`, `PUSH`, `POP`;
- arithmetic: `ADD`, `ADC`, `SUB`, `SBB`, `INR`, `DCR`, `DAD`;
- logical: `ANA`, `XRA`, `ORA`, `CMP`, rotates and complements;
- branch: `JMP`, conditional jumps, `CALL`, `RET`, and `RST`;
- I/O and machine control: `IN`, `OUT`, `EI`, `DI`, `HLT`, `NOP`, `SIM`, `RIM`.

Mnemonic similarity does not imply identical encoding or flag effects. `INR B` and `ADD B` both perform arithmetic, but `INR` preserves carry while `ADD` defines it from the addition. `MOV` changes no condition flags. Exact semantics, flags, byte count, and timing belong to the instruction definition, not to an informal reading of the name.

## Operands and what they denote

An operand can denote a register (`A`, `B`, `C`, `D`, `E`, `H`, `L`), a register pair (`B`, `D`, `H`, or `SP` in pair-using instructions), the memory symbol `M`, immediate data, a direct address, a port, or a program label. The assembler interprets the operand according to the mnemonic.

`M` is not an eighth physical general-purpose register. It means the memory byte whose address is in HL. Thus `MOV A,M` performs $A\leftarrow M[HL]$, and source code using `M` may require an external memory cycle even though the instruction itself is only one byte.

A symbol such as `LOOP` stands for a value maintained in the assembler's symbol table. If `LOOP` is assigned address `2050H`, `JNZ LOOP` can assemble as the same three bytes as `JNZ 2050H`. The label improves maintainability; the processor ultimately receives only numeric bytes.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/assembly-to-machine-code.png' | relative_url }}" alt="Translation path from an 8085 assembly source statement through symbol resolution and opcode encoding to object bytes">
  <figcaption>The assembler parses fields, resolves symbols, selects an encoding, and emits object bytes. Labels and comments assist the programmer but are not fetched by the 8085.</figcaption>
</figure>

## Machine code and structured opcode fields

Machine code is commonly printed in hexadecimal because one hexadecimal digit represents four bits. The processor nevertheless decodes eight binary lines. Many 8085 opcodes are systematic fields rather than unrelated numbers.

For the `MOV` family,

$$\boxed{\texttt{MOV d,s}:\quad 01\;DDD\;SSS}.$$

The three-bit register code is

| register | B | C | D | E | H | L | M | A |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| code | 000 | 001 | 010 | 011 | 100 | 101 | 110 | 111 |

Therefore `MOV A,C` is

$$01\;111\;001_2=01111001_2=79_{16}.$$

The nominal bit pattern for `MOV M,M` is `01 110 110`, or `76H`. Copying a memory location onto itself would have no useful effect, so this code is assigned to `HLT`. This exception must be learned with the otherwise regular `MOV` matrix.

The `MVI` family uses

$$\boxed{\texttt{MVI d,data8}:\quad 00\;DDD\;110},$$

followed by the data byte. `MVI D,5AH` has destination code `010`, giving `00010110B = 16H`, followed by `5AH`. The complete machine instruction is `16 5A`.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/mov-mvi-opcode-fields.png' | relative_url }}" alt="Bit-field construction of MOV A comma C and MVI D comma 5AH opcodes using 8085 register codes">
  <figcaption>The destination and source fields make the MOV and MVI families regular. The second byte of MVI is immediate data, not part of the opcode byte.</figcaption>
</figure>

## Other reusable encoding patterns

The eight accumulator-register ALU groups occupy a regular region:

```text
10000 SSS   ADD source
10001 SSS   ADC source
10010 SSS   SUB source
10011 SSS   SBB source
10100 SSS   ANA source
10101 SSS   XRA source
10110 SSS   ORA source
10111 SSS   CMP source
```

For example, `ADD M` appends the `M` code `110` to `10000`, producing `10000110B = 86H`. `CMP A` is `10111 111B = BFH`. The source field changes the operand without changing the operation family.

Register-pair encodings normally use a two-bit `RP` field: `00` for BC, `01` for DE, `10` for HL, and `11` for SP. `LXI rp,data16` has the opcode pattern `00 RP 0001`. With `RP=10`, `LXI H,2050H` begins with `21H`; the complete bytes are `21 50 20` because the low byte of the immediate word comes first.

Restart instructions have the compact form

$$\boxed{\texttt{RST n}:\quad 11\;NNN\;111},\qquad n=0,1,\ldots,7.$$

The encoded number selects vector address $8n$. `RST 5` is `11 101 111B = EFH` and transfers control to `0028H` after saving the return address on the stack.

Conditional jumps follow `11 CCC 010`, where `CCC` selects NZ, Z, NC, C, PO, PE, P, or M. Thus `JNZ 2050H` is `C2 50 20`, whereas `JZ 2050H` is `CA 50 20`. The address bytes are identical; only the condition field changes.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/branch-rst-opcode-fields.png' | relative_url }}" alt="8085 conditional-jump and restart opcode fields with examples JNZ 2050H and RST 5">
  <figcaption>Condition and restart numbers are encoded as three-bit fields. A conditional jump appends two direct-address bytes; a restart encodes its vector number entirely in one byte.</figcaption>
</figure>

## From source operands to object bytes

The assembler makes several decisions for each instruction:

1. recognize the mnemonic and permitted operand forms;
2. map registers or conditions into their bit fields;
3. evaluate numeric expressions and resolve labels;
4. check whether values fit the required 8- or 16-bit range;
5. emit the opcode and any following bytes in prescribed order.

Consider the source sequence beginning at `2000H`:

```text
        MVI A,3CH
        MOV B,A
        ADI 04H
        STA 2500H
```

It becomes

```text
address   bytes       source
2000      3E 3C       MVI A,3CH
2002      47          MOV B,A
2003      C6 04       ADI 04H
2005      32 00 25    STA 2500H
```

The next instruction begins at `2008H`: the byte counts are $2+1+2+3=8$. The two bytes after `STA` encode the direct address `2500H` as low byte `00H`, high byte `25H`.

## Decoding a byte sequence

Decoding reverses assembly. Suppose memory contains

```text
21 00 30 7E B7 CA 12 20
```

`21H` matches `LXI H` and consumes the following bytes as `3000H`. `7EH` matches `MOV A,M`. `B7H` matches `ORA A`, a common way to set S, Z, and P according to A while clearing carry and auxiliary carry as specified for logical OR. `CAH` matches `JZ` and consumes `12H 20H` as destination `2012H`. Correct decoding therefore requires both the opcode map and the length prescribed by that opcode; treating every byte as a fresh opcode would misalign the stream.

Assembler directives such as `DB`, `DW`, `ORG`, and `EQU` are not processor instructions. They control data generation, location assignment, or symbol values during assembly. A byte emitted by `DB 76H` is numerically indistinguishable from the `HLT` opcode when fetched as an instruction. Meaning depends on whether program control reaches that memory as code or the program accesses it as data.

## Accuracy checks when hand-encoding

For manual translation, first identify instruction length and addressing mode. Then write the binary template, insert register or condition fields, convert to hexadecimal, and append operands. For a 16-bit quantity, append low byte before high byte. Finally recompute successive addresses and ensure that labels point to opcode bytes rather than to an operand byte.

Do not infer an encoding merely from a mnemonic's spelling. Use the documented opcode pattern or instruction table, particularly for implied instructions and 8085-specific operations such as `RIM` and `SIM`. A machine-code listing is exact only when byte order, instruction boundaries, and operand interpretation all agree.

## Preparation questions

1. Distinguish a mnemonic, the assembly opcode field, an operand, an opcode byte, and a complete machine instruction.
2. Derive the machine byte for `MOV E,H` from the `01 DDD SSS` format.
3. Encode `MVI L,A6H` and explain why the immediate byte is not part of the opcode.
4. Derive the opcodes for `ADD C`, `XRA M`, and `CMP A` using the accumulator-ALU family patterns.
5. Explain the special status of the nominal `MOV M,M` bit pattern.
6. Encode `LXI D,4A20H`, `JZ 2150H`, and `RST 6`, preserving the correct byte order.
7. Starting at `4000H`, assign addresses to the bytes generated by `MVI B,02H`, `DCR B`, and `JNZ 4002H`.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/electronics/unit-3/8085-opcodes-operands-mnemonics-machine-code.mac' | relative_url }})
