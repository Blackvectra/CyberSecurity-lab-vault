#!/bin/bash

# -------- CONFIG --------
SOURCE_FILE="myplugin.c"
OUTPUT_SO="/tmp/myplugin.so"
LOADER_TARGET="/bin/true"  # Safe system binary to LD_PRELOAD against

# Handle stealth flag
if [ "$1" == "stealth" ]; then
    SOURCE_FILE="myplugin_stealth.c"
    OUTPUT_SO="/tmp/myplugin_stealth.so"
fi

echo "[*] Selected source: $SOURCE_FILE"
echo "[*] Output shared object: $OUTPUT_SO"

# Check if gcc is installed
if ! command -v gcc &> /dev/null; then
    echo "[!] gcc is not installed. Please install it first."
    exit 1
fi

# Compile the shared object
echo "[*] Compiling..."
gcc -fPIC -shared -o "$OUTPUT_SO" "$SOURCE_FILE"

# Check for successful compilation
if [ $? -ne 0 ]; then
    echo "[!] Compilation failed."
    exit 1
fi
echo "[+] Compilation successful."

# Run with LD_PRELOAD
echo "[*] Executing with LD_PRELOAD against: $LOADER_TARGET"
LD_PRELOAD="$OUTPUT_SO" "$LOADER_TARGET"
