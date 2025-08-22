# ethical-hacking-lab
Red team home lab simulating Linux, Windows, and Web App attacks
<p align="center">
  <img src="banner.png" alt="Virtual Ethical Hacking Lab Banner">
</p>

# 🧨 Virtual Ethical Hacking Home Lab

> Author: Matthew Levorson  
> GitHub: [blackvectra](https://github.com/blackvectra)  
> Brand: `nextlayersec`  
> Certifications: ISC2 CC | CompTIA A+ | Security+ | (CySA+ in progress)

---

## 🧠 Purpose

This home lab was built to simulate ethical hacking and penetration testing across Linux, Windows, and Web Application targets using vulnerable systems and tools inside a fully isolated environment. The goal is to gain practical experience in real-world attack techniques, privilege escalation, lateral movement, persistence, and post-exploitation.

---

## 💻 Environment Setup

| Component         | Details                                  |
|------------------|-------------------------------------------|
| Host OS          | Windows 11 Pro                            |
| RAM              | 64GB                                      |
| Storage          | 4TB SSD (Primary), 2TB C:\ Drive          |
| Virtualization   | VMware Workstation 17.5                   |
| Attacker Machine | Kali Linux (latest)                       |
| Victim VMs       | Windows 10 (x2), Windows Server 2016 DC, Ubuntu Metasploitable |

---

## 🔐 Linux Pentesting

### 🔎 Reconnaissance
Tools used:
- `nmap`, `enum4linux`, `ftp`, `ssh`, `wget`

Discovered:
- Open Ports: 21 (FTP), 22 (SSH), 80 (HTTP), 139/445 (SMB), 3306 (MySQL)
- Vulnerable Service: Samba with CVE-2007-6750 (Metasploit module: `usermap_script`)

### 💥 Exploitation
- Gained access via `ftp` using default creds: `vagrant:vagrant`
- SSH used to log in after discovering same creds worked
- Dumped `/etc/shadow`:
  ```bash
  cat /etc/shadow > hash.txt
  Cracked hashes with john and hashcat

🔼 Privilege Escalation via Docker Misconfig

Used linPEAS to discover current user was in Docker group: docker run -it --rm -v /:/mnt ubuntu chroot /mnt bash
Result: Full root access on host by using Docker to mount /

🪝 Persistence
	•	Created a reverse shell payload (shell.sh)
	•	Renamed to .backupd and placed in /usr/local/bin/
	•	Used crontab -e to schedule execution
	•	Set up listener: nc -lvnp 5555
 Compromised Passwords
	•	Used john with rockyou.txt
	•	Cracked: vagrant:vagrant and others
	•	Full system takeover

⸻

🪟 Windows Pentesting

🔎 Reconnaissance
	•	Network range: 192.168.42.0/24
	•	Nmap scan revealed:
	•	Open ports on DC1, Bob, and Alice’s computers
	•	SMBv2 enabled
	•	OS fingerprinting pointed to Windows Server and Windows 10

💥 Exploitation (Responder)
	1.	Used responder to capture NTLMv2 hash
	2.	Social engineered user to connect to a fake share
	3.	Cracked with:hashcat -m 5600 hash.txt rockyou.txt


 ⚠️ Ethical notice: This lab was performed in a fully isolated virtual environment for educational purposes only.
