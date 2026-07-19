---
title: "8085 Bus Timing Diagrams"
summary: "Address-data demultiplexing and exact opcode-fetch, memory, I/O and wait-state timing on the 8085 system bus."
date: 2025-05-13 09:00:00 +0530
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
  - bus-timing
  - address-demultiplexing
  - ale
  - read-write-control
permalink: /msc/sem-iv/electronics/8085-bus-timing-diagrams/
hidden: true
---

An 8085 timing diagram states not only *what* transfer occurs, but also *when* the address, data and control signals are valid. The processor has a dedicated high-order address bus $A\_{15}$-$A\_8$ and a multiplexed low-order address/data bus $AD\_7$-$AD\_0$. A correct interface must preserve the low address after the shared pins change function, decode whether the transfer is memory or I/O, and enable the selected device only inside the valid data interval.

Signal names with an overbar are active low. Thus $\overline{\mathrm{RD}}=0$ commands a selected device to drive the data bus, and $\overline{\mathrm{WR}}=0$ commands it to accept CPU data. ALE is active high. `IO/M` is low for a memory transaction and high for an I/O transaction.

## Demultiplexing the lower address

During $T\_1$ of every bus machine cycle, $A\_{15}$-$A\_8$ carries the high address and $AD\_7$-$AD\_0$ carries $A\_7$-$A\_0$. ALE rises during this address phase. An external transparent latch, such as the latch integrated into Intel's 8155/8355/8755 family or a separate eight-bit latch, follows the `AD` inputs while enabled. The falling edge of ALE closes the latch, so its outputs retain $A\_7$-$A\_0$ throughout the remainder of the cycle.

After the address phase, the CPU releases or drives $AD\_7$-$AD\_0$ according to the transfer direction. For a read, the selected memory or peripheral drives these lines. For a write, the CPU drives them. The latched low address is therefore essential: connecting a memory address input directly to `AD` would replace its address with the data byte during $T\_2$ and $T\_3$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/timing-demultiplexed-bus-phases.png' | relative_url }}" alt="8085 demultiplexing topology showing A15 through A8, multiplexed AD7 through AD0, ALE-controlled latch, memory and I/O decoding." loading="lazy">
  <figcaption>ALE preserves the low address externally; the same physical `AD` pins can then carry an input or output data byte.</figcaption>
</figure>

## Status and cycle identification

The status outputs $S\_1,S\_0$ encode the basic bus action: `11` fetch, `10` read, `01` write and `00` halt. Combining them with `IO/M` distinguishes the common cycles.

| `IO/M` | $S\_1S\_0$ | Cycle |
|---:|:---:|---|
| 0 | 11 | opcode fetch from memory |
| 0 | 10 | memory read |
| 0 | 01 | memory write |
| 1 | 10 | I/O read |
| 1 | 01 | I/O write |

Status is useful for decoding and instrumentation, but the active-low control outputs establish the actual transfer interval. `IO/M=0` and $\overline{\mathrm{RD}}=0$ identifies a memory read; `IO/M=1` and $\overline{\mathrm{WR}}=0$ identifies an I/O write. $\overline{\mathrm{INTA}}$ replaces the normal read control during the instruction cycle following an accepted `INTR` request.

## Opcode-fetch timing

The first machine cycle of an instruction is $M\_1$, the opcode fetch. Its standard length is four T-states.

1. In $T\_1$, the PC address appears on the address buses and ALE pulses high. `IO/M` indicates memory and $S\_1S\_0=11$ identifies fetch.
2. In $T\_2$, the low bus changes from address to input data and $\overline{\mathrm{RD}}$ goes low. The addressed memory must begin driving the opcode.
3. In $T\_3$, the opcode is valid and is accepted by the CPU. $\overline{\mathrm{RD}}$ returns high, ending the device's bus drive.
4. In $T\_4$, the processor decodes the opcode and performs the internal action needed to schedule the rest of the instruction.

The fourth state distinguishes a normal opcode fetch from an ordinary three-state data read. `MOV B,C`, `ADD D` and `NOP` finish after this one four-state cycle. When decode finds an immediate byte or memory operand, $M\_2$ begins with another address phase.

## Memory-read timing

A basic memory-read cycle occupies $T\_1,T\_2,T\_3$. The 16-bit address is presented in $T\_1$, ALE latches its low byte, and `IO/M=0`, $S\_1S\_0=10$. During $T\_2$ the CPU makes the multiplexed bus available for input and asserts $\overline{\mathrm{RD}}$. Memory drives the selected byte after its access delay. The byte must be valid for the processor's specified setup interval before the sampling edge in $T\_3$ and held for the required interval afterward. Once $\overline{\mathrm{RD}}$ returns high, the memory must release the bus.

An operand read and an instruction-byte read use this same bus form. Their logical roles differ: `MVI A,32H` uses its $M\_2$ read to obtain immediate data from `PC`, while `MOV A,M` uses $M\_2$ to obtain an operand from the address held in `HL`. Each instruction has $4+3=7$ basic T-states.

## Memory-write timing

A memory write also begins with the address and ALE in $T\_1$, but `IO/M=0`, $S\_1S\_0=01$. In $T\_2$ the CPU drives the output data on $AD\_7$-$AD\_0$ and asserts $\overline{\mathrm{WR}}$ low. Address and data remain stable through the active control interval. Intel specifies that the selected location accepts the data at the trailing, low-to-high edge of $\overline{\mathrm{WR}}$; the CPU retains data briefly after that edge to meet hold time.

For `MOV M,A`, the opcode fetch is followed by one memory-write cycle, giving 2 machine cycles and 7 T-states. `MVI M,32H` first reads its immediate byte and then writes it at `HL`, giving OF + MR + MW = $4+3+3=10$ T-states.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/timing-opcode-memory-cycles.png' | relative_url }}" alt="Aligned 8085 opcode fetch, memory read and memory write waveforms with T-state boundaries, ALE, active-low RD and WR, address and data windows." loading="lazy">
  <figcaption>Read data is supplied to the CPU while $\overline{\mathrm{RD}}$ is low; write data is supplied by the CPU and accepted at the trailing edge of $\overline{\mathrm{WR}}$.</figcaption>
</figure>

## I/O read and write cycles

The electrical direction and active control shapes of I/O cycles parallel their memory counterparts, but `IO/M=1`. `IN 42H` has opcode `DBH` followed by port byte `42H`. It uses an opcode fetch, a memory read to obtain the second instruction byte, and an I/O read: 2 bytes, 3 machine cycles and 10 T-states. During the I/O cycle the port number is duplicated on both halves of the address bus, so `42H` appears as `4242H`. The addressed port drives $AD\_7$-$AD\_0$ while $\overline{\mathrm{RD}}$ is active, and the CPU transfers the byte to the accumulator.

`OUT 42H` has opcode `D3H` and the same 2-byte, 3-cycle, 10-state structure. In its final I/O-write cycle the duplicated port address is present, the accumulator byte is driven on `AD`, and $\overline{\mathrm{WR}}$ is active. Memory and peripherals must not both respond: `IO/M` belongs in the chip-select or control decoding.

The port address is eight bits even though the physical address presentation is sixteen bits. Consequently the standard isolated-I/O space contains 256 port numbers, `00H` through `FFH`. This differs from memory-mapped I/O, where ordinary memory instructions and the full 16-bit memory address are used and `IO/M` remains low.

## READY and the wait state

`READY` permits a slower device to extend a transfer. If it is low at the required sampling instant in a read or write cycle, the 8085 inserts a wait state $T\_W$ between $T\_2$ and $T\_3$. It tests readiness again and can insert further waits until `READY` is high. During the extension the address remains valid and the active read or write control remains asserted; the transfer is not restarted.

One wait state adds exactly one clock period. Thus `MOV A,M` is normally 7 T-states. If its operand read contains two waits, it takes 9 T-states. At $3\,\text{MHz}$ this is $3.000\,\mu\text{s}$ instead of $2.333\,\mu\text{s}$. The opcode still occupies one byte and the instruction still contains two machine cycles.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/timing-io-wait-data-windows.png' | relative_url }}" alt="8085 I/O read and I/O write waveforms plus a read cycle extended by READY low through one wait state." loading="lazy">
  <figcaption>`IO/M` selects the I/O space; a low `READY` extends the active transfer by integral $T_W$ periods without changing its direction.</figcaption>
</figure>

## Reading a timing diagram rigorously

A waveform should be checked in a fixed order. First identify machine-cycle boundaries and state labels. Then read the address during $T\_1$ rather than during the later data phase. Confirm that ALE is a positive pulse and that $\overline{\mathrm{RD}}$ and $\overline{\mathrm{WR}}$ are never simultaneously active in an ordinary transfer. Use `IO/M` and $S\_1S\_0$ to classify the cycle. Finally mark the valid data window and determine its owner: the external device owns data during a read; the CPU owns it during a write.

This method also exposes drawing errors. A low-address label continuing across $T\_2$ on the raw `AD` bus is incorrect; only the latch output preserves that address. A write-data window that begins after $\overline{\mathrm{WR}}$ rises cannot meet the trailing-edge requirement. A memory cycle drawn with `IO/M=1`, or an active-high label `RD`, reverses the bus meaning.

The timing and signal definitions above follow Intel's [*MCS-80 User's Manual* (October 1977)](https://www.bitsavers.org/components/intel/MCS80/98-153D__MCS-80_Users_Manual_Oct77.pdf), including the 8085 pin definitions and basic system timing, and Intel's [*8080/8085 Assembly Language Programming Manual* (November 1978)](https://www.bitsavers.org/components/intel/8085/9800301C_8080_8085_Assembly_Language_Programming_Manual_Nov78.pdf) for instruction cycles and states.

## Preparation questions

1. Explain why an external latch is required even though the 8085 presents all sixteen address bits during $T\_1$.
2. Draw the bus ownership of $AD\_7$-$AD\_0$ during $T\_1,T\_2,T\_3$ for one memory read and one memory write.
3. Decompose `IN A5H` into bytes and machine cycles, and calculate its no-wait T-state count.
4. Which values of `IO/M` and $S\_1S\_0$ distinguish opcode fetch, memory write and I/O read?
5. A `MOV M,A` instruction encounters three wait states. Find its total time at $2\,\text{MHz}$.
6. State the instant at which a selected memory device accepts write data and identify the required data-valid intervals around it.
7. Diagnose why a circuit that decodes only $A\_{15}$-$A\_8$ and ignores `IO/M` may produce bus contention.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/electronics/unit-3/8085-bus-timing-diagrams.mac' | relative_url }})
