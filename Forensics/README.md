# Digital Forensics

## Overview

Digital forensics involves the identification, preservation, analysis, and presentation of digital evidence. This section covers forensic techniques used in incident response, law enforcement investigations, and CTF competitions.

---

## Forensic Disciplines

### Disk Forensics
- Disk imaging with `dd`, `dcfldd`, or FTK Imager
- File system analysis (NTFS, ext4, FAT32)
- Deleted file recovery
- Slack space and unallocated space analysis
- Timeline analysis with `plaso`/`log2timeline`

### Memory Forensics
- Memory acquisition with `LiME`, `WinPmem`, or `DumpIt`
- Analysis with `Volatility` / `Volatility3`
- Process listing, DLL injection detection
- Network connections from memory
- Extracting credentials and encryption keys

### Network Forensics
- Packet capture analysis with `Wireshark` / `tshark`
- NetFlow and connection analysis
- DNS query reconstruction
- HTTP session extraction
- Identifying C2 traffic patterns

### Log Analysis
- Windows Event Logs (Security, System, Application)
- Linux syslog, auth.log, journal
- Web server access logs
- Firewall and IDS/IPS logs
- SIEM correlation

### File Analysis
- File carving with `foremost`, `scalpel`, `binwalk`
- Metadata extraction with `exiftool`
- Steganography detection with `stegsolve`, `zsteg`, `steghide`
- Document metadata and hidden content

---

## Tools

| Tool | Purpose |
|------|---------|
| `Autopsy` | GUI forensic platform (Sleuth Kit) |
| `Volatility3` | Memory forensics framework |
| `Wireshark` | Network packet analysis |
| `FTK Imager` | Disk imaging and evidence preview |
| `exiftool` | File metadata extraction |
| `foremost` | File carving from disk images |
| `binwalk` | Firmware and embedded file extraction |
| `strings` | Extract readable text from binaries |
| `log2timeline` | Super timeline generation |

---

## CTF Forensics Categories

- **File analysis** -- Identify file types, hidden data, metadata
- **Steganography** -- Data hidden in images, audio, or documents
- **Memory dumps** -- Extract flags from process memory
- **Packet captures** -- Reconstruct communications, find credentials
- **Disk images** -- Recover deleted files, analyze file systems

---

## Evidence Handling Best Practices

1. **Preserve** -- Create forensic images, never work on originals
2. **Document** -- Maintain chain of custody and detailed notes
3. **Hash** -- Verify integrity with MD5/SHA-256 before and after analysis
4. **Analyze** -- Use write-blockers and forensic workstations
5. **Report** -- Present findings clearly with supporting evidence

---

## References

- [SANS Digital Forensics](https://www.sans.org/digital-forensics-incident-response/)
- [Volatility Foundation](https://volatilityfoundation.org/)
- [Autopsy / Sleuth Kit](https://www.sleuthkit.org/)
- [NIST SP 800-86: Guide to Integrating Forensic Techniques](https://csrc.nist.gov/publications/detail/sp/800-86/final)

---

> _Add your forensic investigation notes and writeups below as you complete them._
