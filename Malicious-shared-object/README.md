# Malicious Shared Object for Protected File Exfiltration

## Overview
This project demonstrates how a shared object (`.so` file) can be crafted to execute arbitrary code when loaded by a vulnerable application.  
The objective here is to read a sensitive file (`/flag`) and output its contents.

This technique is common in:
- Capture The Flag (CTF) competitions
- Binary exploitation scenarios
- Penetration testing engagements

## How It Works
- Defines an `init()` function that opens `/flag`, reads up to 255 bytes, and writes it to stdout.
- Compiles the source as a shared object (`.so`) using `gcc`.
- Loads the `.so` using a dynamic loader which triggers the execution automatically.

## Building and Running
Clone the repository, then run:

```bash
chmod +x build_and_run.sh
./build_and_run.sh
