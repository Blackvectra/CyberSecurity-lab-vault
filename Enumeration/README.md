# Enumeration & Exploitation

## Overview

Enumeration is the process of actively probing a target to discover services, users, shares, and other information that can be leveraged during exploitation. This section covers enumeration techniques across network services, operating systems, and applications.

---

## Enumeration Phases

### 1. Network Discovery
- Host discovery with `nmap -sn`
- ARP scanning with `arp-scan` or `netdiscover`
- Identifying live hosts and network topology

### 2. Port & Service Enumeration
- TCP/UDP scanning: `nmap -sS -sV -sC -O`
- Service version detection
- Script scanning with NSE (Nmap Scripting Engine)

### 3. Service-Specific Enumeration

| Service | Port(s) | Tools | What to Look For |
|---------|---------|-------|------------------|
| SMB | 139, 445 | `enum4linux`, `smbclient`, `crackmapexec` | Shares, users, policies |
| DNS | 53 | `dig`, `nslookup`, `dnsrecon` | Zone transfers, subdomains |
| HTTP/HTTPS | 80, 443 | `gobuster`, `nikto`, `dirb` | Directories, technologies, vulns |
| FTP | 21 | `ftp`, `nmap scripts` | Anonymous login, writable dirs |
| SSH | 22 | `ssh`, `hydra` | Banner grabbing, weak creds |
| SNMP | 161 | `snmpwalk`, `onesixtyone` | Community strings, system info |
| LDAP | 389, 636 | `ldapsearch`, `windapsearch` | Users, groups, OUs |
| RPC | 111, 135 | `rpcclient`, `rpcinfo` | RPC endpoints, SID enumeration |

### 4. Web Application Enumeration
- Directory brute-forcing: `gobuster`, `ffuf`, `feroxbuster`
- Technology fingerprinting: `whatweb`, `wappalyzer`
- Virtual host discovery
- API endpoint enumeration

### 5. User & Group Enumeration
- RID cycling on Windows
- LDAP queries for Active Directory
- `/etc/passwd` review on Linux
- Kerberos user enumeration with `kerbrute`

---

## Common Enumeration Workflow

```
1. nmap -sC -sV -oN scan.txt <target>
2. Review open ports and services
3. Run service-specific enumeration tools
4. Document findings: users, shares, versions, misconfigs
5. Identify attack surface and prioritize targets
```

---

## Tools Reference

| Tool | Purpose |
|------|---------|
| `nmap` | Port scanning and service detection |
| `enum4linux` | SMB/NetBIOS enumeration on Linux |
| `gobuster` | Directory and DNS brute-forcing |
| `nikto` | Web server vulnerability scanner |
| `crackmapexec` | Multi-protocol enumeration and exploitation |
| `hydra` | Brute-force login attacks |
| `ffuf` | Fast web fuzzer |
| `kerbrute` | Kerberos enumeration |

---

## References

- [Nmap Reference Guide](https://nmap.org/book/man.html)
- [HackTricks Enumeration](https://book.hacktricks.xyz/)
- [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)

---

> _Add your enumeration notes and findings below as you complete labs._
