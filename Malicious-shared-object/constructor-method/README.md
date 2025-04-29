# Malicious Shared Object

## Overview
This project demonstrates how a crafted shared object (`.so` file) can be used to exfiltrate a protected file (`/flag`) upon dynamic loading using `LD_PRELOAD`.

Two techniques are showcased:
- Basic `init()` method
- Advanced `__attribute__((constructor))` method
- Optional stealthier versions that self-delete after execution

These methods are commonly used in:
- Capture The Flag (CTF) competitions
- Binary exploitation
- Red team post-exploitation activities

## Directory Structure
```plaintext

malicious-shared-object/
├── basic-init-method/
│   ├── myplugin.c             # Normal version
│   ├── myplugin_stealth.c      # Stealth version (self-deletes)
│   ├── build_and_run.sh
├── constructor-method/
│   ├── myplugin.c             # Normal version
│   ├── myplugin_stealth.c      # Stealth version (self-deletes)
│   ├── build_and_run.sh
├── README.md


## How to Build and Run
cd malicious-shared-object/basic-init-method
# OR
cd malicious-shared-object/constructor-method

##Make the build script executable (only needed once)
chmod +x build_and_run.sh
##Build and Run the Normal Payload
./build_and_run.sh
##Build and Run the Stealth (Self-Deleting) Payload
./build_and_run.sh stealth
##Cleanup (Optional)
rm -f /tmp/*.so

cd Malicious-Shared-Object/basic-init-method
chmod +x build_and_run.sh
./build_and_run.sh stealth


---

# ✅ **How to Run Summary (Very Simple)**

| Task | Command |
|:-----|:--------|
| Navigate to method folder | `cd Malicious-Shared-Object/basic-init-method` |
| Make script executable | `chmod +x build_and_run.sh` |
| Run normal payload | `./build_and_run.sh` |
| Run stealth (self-deleting) payload | `./build_and_run.sh stealth` |

---

# 🛠 **Quick Upload Checklist for GitHub**
cd Cybersecurity-Vault
git add Malicious-Shared-Object
git commit -m "Added Malicious Shared Object (normal and stealth versions, fully portable)"
git push origin main

