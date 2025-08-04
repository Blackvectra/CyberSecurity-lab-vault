# Active Directory Security Lab

## Overview

This lab focuses on **Active Directory (AD) security**, covering common attack vectors, privilege escalation techniques, and defense strategies within a Windows domain environment. It is designed for cybersecurity professionals to practice hands-on AD penetration testing and to better understand AD security challenges.

---

## Objectives

- Understand Active Directory architecture and components  
- Perform reconnaissance and enumeration on AD environments  
- Identify and exploit common AD vulnerabilities  
- Practice privilege escalation techniques  
- Implement security controls and mitigation strategies  

---

## Lab Environment Setup

### Requirements

- Windows Server (Domain Controller) with Active Directory Domain Services installed  
- Windows Client joined to the domain  
- Tools:  
  - BloodHound  
  - PowerView (PowerShell)  
  - Mimikatz  
  - CrackMapExec  
  - Impacket suite  
  - Responder  

### Network Configuration

- Domain: `corp.local` (example)  
- Users: Multiple user accounts with varying privilege levels  
- Groups: Domain Admins, Enterprise Admins, and other organizational units  

---

## Key Attack Techniques

### 1. Enumeration

- Using **PowerView** to gather domain information  
- Querying users, groups, trusts, and GPOs  
- BloodHound graph data collection  

### 2. Kerberos Attacks

- **Kerberoasting**: Extracting service tickets for offline cracking  
- **AS-REP Roasting**: Attacking users without pre-authentication  
- **Golden Ticket**: Forging Kerberos tickets to gain persistent Domain Admin access  

### 3. Credential Access

- Dumping credentials with **Mimikatz**  
- Pass-the-Hash and Pass-the-Ticket attacks  
- Extracting cached credentials  

### 4. Lateral Movement

- Using **CrackMapExec** and **PsExec** for lateral movement  
- Exploiting misconfigured shares and weak permissions  

### 5. Privilege Escalation

- Exploiting unconstrained delegation  
- Overpass-the-Hash attacks  
- Abusing ACLs and GPOs  

---

## Defense & Mitigation Strategies

- Enforce **least privilege** principle  
- Use **Managed Service Accounts**  
- Monitor and restrict **delegation settings**  
- Regularly audit and clean **active sessions and tickets**  
- Implement **multi-factor authentication (MFA)** for sensitive accounts  
- Harden domain controllers and critical assets  

---

## Lab Exercises

| Exercise | Description | Tools Used |
| -------- | ----------- | ---------- |
| AD Enumeration | Collect domain info with PowerView and BloodHound | PowerView, BloodHound |
| Kerberoasting Attack | Extract and crack service tickets | Rubeus, Hashcat |
| Mimikatz Dump | Extract credentials from memory | Mimikatz |
| Lateral Movement | Move laterally using valid credentials | CrackMapExec, PsExec |
| Golden Ticket Forgery | Create forged Kerberos tickets | Mimikatz |

---

## References

- [Microsoft Active Directory Documentation](https://docs.microsoft.com/en-us/windows-server/identity/active-directory-domain-services)  
- [BloodHound GitHub](https://github.com/BloodHoundAD/BloodHound)  
- [PowerView Documentation](https://github.com/PowerShellMafia/PowerSploit/blob/master/Recon/PowerView.ps1)  
- [Mimikatz Official Repo](https://github.com/gentilkiwi/mimikatz)  
- [Kerberoasting Explained](https://adsecurity.org/?p=1517)  

---

## Notes

- Always run penetration testing activities in authorized, controlled environments.  
- Practice responsible disclosure and avoid unauthorized testing on production networks.

---

> _“Active Directory is the crown jewel of many enterprise environments — protect it wisely.”_  
> — Blackvectra

