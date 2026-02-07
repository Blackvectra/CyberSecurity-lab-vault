# Malicious Shared Object

## Overview

This project demonstrates how a crafted shared object (`.so` file) can be used to exfiltrate a protected file (`/flag`) upon dynamic loading using `LD_PRELOAD`.

Two techniques are showcased:
- Basic `init()` method
- Advanced `__attribute__((constructor))` method
- Optional stealthier versions that self-delete after execution

These methods are commonly used in:
- Capture The Flag (CTF) competitions
- Binary exploitation challenges
- Red team post-exploitation activities (educational context)

---

## Directory Structure

```
malicious-shared-object/
|-- basic-init-method/
|   |-- myplugin.c              # Normal version
|   |-- myplugin_stealth.c      # Stealth version (self-deletes)
|   |-- build_and_run.sh
|-- constructor-method/
|   |-- myplugin.c              # Normal version
|   |-- myplugin_stealth.c      # Stealth version (self-deletes)
|   |-- build_and_run.sh
|-- README.md
```

---

## How to Build and Run

Navigate to either method directory:

```bash
cd malicious-shared-object/basic-init-method
# OR
cd malicious-shared-object/constructor-method
```

Make the build script executable (only needed once):

```bash
chmod +x build_and_run.sh
```

Build and run the normal payload:

```bash
./build_and_run.sh
```

Build and run the stealth (self-deleting) payload:

```bash
./build_and_run.sh stealth
```

Cleanup (optional):

```bash
rm -f /tmp/*.so
```

---

## Quick Reference

| Task | Command |
|------|---------|
| Navigate to method folder | `cd malicious-shared-object/basic-init-method` |
| Make script executable | `chmod +x build_and_run.sh` |
| Run normal payload | `./build_and_run.sh` |
| Run stealth payload | `./build_and_run.sh stealth` |

---

## Technique Details

### Basic init() Method
Uses the C `init()` function which is automatically called when a shared library is loaded. Simple and widely compatible.

### Constructor Method
Uses GCC's `__attribute__((constructor))` which runs the function before `main()` when the library is loaded via `LD_PRELOAD`. More reliable for pre-execution hooks.

### Stealth Variants
Both methods have stealth versions that call `unlink()` on themselves after execution, removing the `.so` file from disk to reduce forensic evidence.

---

> **Disclaimer:** This content is for educational and authorized CTF/lab use only. Do not use these techniques on systems without explicit authorization.
