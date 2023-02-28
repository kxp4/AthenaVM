# Athena Instruction Set Architecture
Athena is a 16-bit general purpose instruction set architecture.

## Registers
All registers have a fixed width of 16 bits.
- IP - Instruction Pointer
- FL - Flags Register
- SP - Stack Pointer
- BP - Stack Base Pointer
- r{0,11} - General Purpose Registers

## Memory
The total amount of addressable memory is 64KiB (0 to 0x10000).  
All data will be stored in little endian.

## Instructions
The first two bytes of the instruction is the opcode.  
The following bytes encode the operands to the instruction, if any.
