# Malicious Shared Object

## Overview
This project demonstrates how a crafted shared object (`.so` file) can be used to exfiltrate a protected file (`/flag`) upon dynamic loading.

Two methods are showcased:
- Basic `init()` function method
- Advanced `__attribute__((constructor))` method
- **Optional**: Stealthier versions that self-delete after execution

These techniques are commonly used in:
- Capture The Flag (CTF) competitions
- Binary exploitation scenarios
- Red team post-exploitation phases

## Directory Structure
```plaintext
Malicious-Shared-Object/
├── basic-init-method/
│   ├── myplugin.c             # Normal version
│   ├── myplugin_stealth.c      # Stealth version (self-deleting)
│   ├── build_and_run.sh        # Build and execute script
├── constructor-method/
│   ├── myplugin.c             # Normal version
│   ├── myplugin_stealth.c      # Stealth version (self-deleting)
│   ├── build_and_run.sh        # Build and execute script
├── README.md                   # Project documentation

## How to Build and Run
cd Malicious-Shared-Object/basic-init-method
# OR
cd Malicious-Shared-Object/constructor-method
chmod +x build_and_run.sh
./build_and_run.sh

./build_and_run.sh stealth

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

1. Copy the full folder structure (`Malicious-Shared-Object/`) into your `Cybersecurity Vault` local folder.
2. Copy the `README.md` (the one above).
3. Stage and push to GitHub:

```bash
cd Cybersecurity-Vault
git add Malicious-Shared-Object
git commit -m "Added Malicious Shared Object  (normal and stealth versions)"
git push origin main

