# CyberSecurity Lab Vault

![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue)
![Security](https://img.shields.io/badge/Focus-Cybersecurity-red)

> A curated collection of cybersecurity labs, CTF solutions, penetration testing projects, and security research.

**Maintained by [Blackvectra](https://github.com/Blackvectra) | NextLayerSec**

---

## Overview

This repository serves as a **cybersecurity knowledge vault** -- a collection of labs, Capture the Flag (CTF) solutions, penetration testing challenges, reverse engineering exercises, and security research.

It is designed to demonstrate:
- Professional growth and hands-on security expertise
- Practical attack and defense techniques in controlled environments
- Structured learning across multiple cybersecurity domains

> All labs and exercises are conducted in isolated, authorized environments for educational purposes only.

---

## Repository Structure

```
CyberSecurity-lab-vault/
|-- Active-Directory/           # AD pentesting, exploitation, and defense
|-- AI/                         # AI coursework and security applications
|-- CTF/                        # Capture the Flag competitions
|   |-- NCL/                    # National Cyber League
|       |-- Individual/         # Individual competition writeups
|       |-- TEAM/               # Team competition writeups
|       |-- Gym/                # Practice gym challenges
|-- Cryptography/               # Cryptography challenges and labs
|-- Enumeration/                # Enumeration and exploitation techniques
|-- Forensics/                  # Digital forensics investigations
|-- Malicious-shared-object/    # LD_PRELOAD CTF techniques (educational)
|   |-- basic-init-method/      # init() function approach
|   |-- constructor-method/     # __attribute__((constructor)) approach
|-- Notes/                      # General cybersecurity notes
|-- Penetration-Testing/        # Comprehensive pentest labs and guides
|   |-- Week 1/
|       |-- Cyberkillchain/     # Cyber Kill Chain defender's guide
|       |-- Maltego/            # OSINT graph analysis tool guide
|       |-- OSINT/              # Open Source Intelligence methodology
|   |-- wordlists/             # Wordlists for credential testing
|-- Reverse-Engineering/        # Reverse engineering techniques and labs
|-- WebApplication/             # Web application security challenges
|-- labs/                       # Additional lab resources
|-- Index.md                    # Wiki-style project index
```

---

## Topics Covered

| Domain | Description |
|--------|-------------|
| **Penetration Testing** | Linux, Windows, and web app attack simulations in a home lab |
| **Active Directory** | AD enumeration, Kerberos attacks, credential access, lateral movement |
| **OSINT** | Open Source Intelligence gathering with Maltego, Amass, and more |
| **CTF Competitions** | National Cyber League (NCL) challenges and solutions |
| **Cryptography** | Cipher analysis, encoding/decoding, and crypto challenges |
| **Forensics** | Disk imaging, memory analysis, log examination, and artifact recovery |
| **Reverse Engineering** | Binary analysis, disassembly, and debugging |
| **Web Application Security** | OWASP Top 10, injection, XSS, authentication bypass |
| **Binary Exploitation** | LD_PRELOAD techniques, shared object injection (CTF context) |
| **Defense & Detection** | Cyber Kill Chain mapping, KQL detections, coverage matrices |

---

## Frameworks & Methodologies

This vault references and maps to industry-standard frameworks:

- **MITRE ATT&CK** -- Technique-level adversary behavior mapping
- **Cyber Kill Chain** -- 7-stage intrusion model with detection strategies
- **NIST Cybersecurity Framework** -- Identify, Protect, Detect, Respond, Recover
- **OWASP Top 10** -- Web application security risks

---

## Lab Environment

The primary lab setup for penetration testing exercises:

| Component | Details |
|-----------|---------|
| Host OS | Windows 11 Pro |
| RAM | 64GB |
| Storage | 4TB SSD |
| Virtualization | VMware Workstation 17.5 |
| Attacker | Kali Linux (latest) |
| Targets | Windows 10 (x2), Windows Server 2016 DC, Ubuntu Metasploitable |

See [Penetration-Testing/ethical-hacking-lab.md](./Penetration-Testing/ethical-hacking-lab.md) for full lab documentation.

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/Blackvectra/CyberSecurity-lab-vault.git
   ```
2. Browse by topic using the directory structure above or the [Index](./Index.md).
3. Each folder contains its own `README.md` with instructions, notes, or writeups.
4. Adapt scripts and techniques for your own lab environments.

---

## Author

**Matthew Levorson** (Blackvectra)
- GitHub: [blackvectra](https://github.com/blackvectra)
- Brand: NextLayerSec
- Certifications: ISC2 CC | CompTIA A+ | Security+ | CySA+ (in progress)

---

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.

---

## Disclaimer

All content in this repository is for **educational and authorized testing purposes only**. Never use these techniques on systems you do not own or have explicit written permission to test. Always follow responsible disclosure practices and applicable laws.
