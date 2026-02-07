# Reverse Engineering

## Overview

Reverse engineering is the process of analyzing software or hardware to understand its design, functionality, and behavior without access to source code. This section covers techniques for binary analysis, malware analysis, and CTF reverse engineering challenges.

---

## Topics

### Static Analysis
- Disassembly with `Ghidra`, `IDA`, `radare2`
- Decompilation to pseudo-C
- String extraction and analysis
- Import/export table examination
- Control flow graph analysis

### Dynamic Analysis
- Debugging with `gdb`, `x64dbg`, `WinDbg`
- Breakpoints, stepping, and register inspection
- System call tracing with `strace` / `ltrace`
- API monitoring with `Procmon` / `API Monitor`
- Sandbox execution and behavior logging

### Binary Formats
- ELF (Linux executables and shared objects)
- PE (Windows executables and DLLs)
- Mach-O (macOS binaries)
- Understanding headers, sections, and segments

### Common Patterns
- Anti-debugging techniques and bypasses
- Packing and unpacking (UPX, custom packers)
- Obfuscation and deobfuscation
- Encryption routines in malware
- License/serial key validation logic

---

## Tools

| Tool | Purpose |
|------|---------|
| `Ghidra` | Free NSA reverse engineering framework |
| `IDA Free` | Interactive disassembler |
| `radare2` / `rizin` | CLI reverse engineering framework |
| `gdb` + `pwndbg`/`gef` | Linux debugger with enhanced UI |
| `x64dbg` | Windows debugger |
| `Binary Ninja` | Binary analysis platform |
| `strace` / `ltrace` | System/library call tracing |
| `objdump` | Object file disassembly |
| `readelf` | ELF file header analysis |
| `file` / `strings` | Quick file identification and string extraction |

---

## CTF RE Challenge Approach

1. **Identify** -- `file`, `strings`, `checksec` to understand the binary
2. **Static analysis** -- Load in Ghidra/IDA, find `main`, trace logic
3. **Dynamic analysis** -- Run in debugger, set breakpoints at key comparisons
4. **Understand the algorithm** -- Identify checks, transformations, or encryption
5. **Solve** -- Write a script to reverse the logic or patch the binary

---

## References

- [Ghidra (NSA)](https://ghidra-sre.org/)
- [Reverse Engineering for Beginners (free book)](https://beginners.re/)
- [Malware Unicorn RE Workshops](https://malwareunicorn.org/)
- [crackmes.one](https://crackmes.one/) -- Practice binaries

---

> _Add your reverse engineering notes and challenge writeups below as you complete them._
