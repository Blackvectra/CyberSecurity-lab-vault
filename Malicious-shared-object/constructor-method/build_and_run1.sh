#!/bin/bash

# Default file
OUTPUT_SO="/tmp/myplugin_constructor.so"
SOURCE_FILE="myplugin.c"
LOADER="/usr/bin/loader"

if [ "$1" == "stealth" ]; then
    SOURCE_FILE="myplugin_stealth.c"
fi

echo "[*] Compiling shared object from $SOURCE_FILE..."
gcc -fPIC -shared -o "$OUTPUT_SO" "$SOURCE_FILE"

if [ $? -ne 0 ]; then
    echo "[!] Compilation failed."
    exit 1
fi
echo "[+] Compilation successful. Output: $OUTPUT_SO"

echo "[*] Running loader with shared object..."
"$LOADER" "$OUTPUT_SO"
