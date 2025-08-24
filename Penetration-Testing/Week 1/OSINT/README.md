# Open Source Intelligence (OSINT) — Demo & Field Guide

This README accompanies the **OpenSourceIntelligenceDemo.mp4** and explains what **OSINT** is, when to use it, and how to reproduce the workflow shown in the demo. It’s written to be **copy‑paste ready** for GitHub repos.

> TL;DR: OSINT turns public data into actionable intelligence by connecting signals across domains, IPs, certs, people, and content using repeatable methods and documented sources.

---

## File Metadata

- **Filename:** `OpenSourceIntelligenceDemo.mp4`  
- **Size:** 55.84 MB  
- **SHA‑256:** `1b7908c06e5ffffcde7b3b2039aaedc62a58757f1f2dd2b7717a2deac2570cd7`  
- **Added:** August 24, 2025

> Tip: Keep the checksum here so you can verify integrity after cloning or sharing.

---

## What is OSINT?

**Open Source Intelligence (OSINT)** is the collection and analysis of publicly available information. In security work, we use OSINT to:
- **Footprint external attack surface** (domains → DNS → IPs → netblocks → certificates → related hosts)
- **Expand IOCs** during incident response (pivot from URL, domain, IP, hash, cert)
- **Brand/person research** for impersonation risk and breach exposure (when authorized)
- **Due diligence & threat intel** (campaign clustering, infrastructure reuse)

OSINT complements internal telemetry (EDR, SIEM, cloud logs) by revealing **external context** you don’t see from inside the network.

---

## What’s in the Demo Video

- A short walk‑through of a **domain‑centric OSINT workflow**
- Live **pivots** across DNS, WHOIS, CT logs, and passive DNS
- Quick tips for **graph hygiene** and **evidence capture** for reporting

---

## Quick Start (Embed / View)

GitHub will stream MP4s directly when you click the file. To embed on a page:

```html
<video src="./OpenSourceIntelligenceDemo.mp4" controls preload="metadata" width="720">
  Your browser doesn’t support embedded videos.
  <a href="./OpenSourceIntelligenceDemo.mp4">Download the MP4</a> instead.
</video>
```

Or plain Markdown link:

```md
[Watch the OSINT demo](./OpenSourceIntelligenceDemo.mp4)
```

---

## Core Concepts (for newcomers)

- **Seed**: the item you start with (domain, IP, URL, email, hash, cert).  
- **Pivot**: a lookup that yields related artifacts (e.g., domain → A/AAAA → IP → netblock).  
- **Enrichment**: adding context (WHOIS, CT logs, ASN/Geo, technology, reputation).  
- **Attribution**: cautious inference about ownership/relationships (document uncertainty).  
- **Evidence**: URLs, timestamps, and query parameters that make results reproducible.

---

## Typical OSINT Workflow (Repeatable)

1. **Define scope & authorization** (written permission if not your own assets).  
2. **Pick a seed** (e.g., `example.org`, `1.2.3.4`, or a phish URL).  
3. **Pivot methodically** (DNS → IPs → netblocks → certs → related domains).  
4. **Log sources** (copy result URLs, add notes).  
5. **Triage relevance & confidence** (tag false positives; avoid over‑attribution).  
6. **Summarize findings** (what exists, what’s risky, what to fix or monitor).

> Golden rule: **small, documented steps** beat giant, untraceable leaps.

---

## Tools Featured / Compatible

- **Maltego** (graph OSINT, transforms/machines, CE or paid)
- **Amass** (DNS enumeration / asset discovery)
- **Subfinder** (subdomain discovery)
- **crt.sh** / **Certificate Transparency** (cert → domains)
- **SecurityTrails / Passive DNS** (historical DNS context)
- **WHOIS / RDAP** (registration and contacts)
- **Wayback Machine** (historic content)
- **Shodan / Censys** (internet‑facing services & banners)
- **VirusTotal** (URL/domain relationships, crowdsourced signals)

*Tools vary per environment—pick a subset that fits your workflow and licensing.*

---

## Lab Exercises (Copy‑Paste)

### A) Domain Footprint
- [ ] Start with your **authorized** domain.  
- [ ] Enumerate **DNS** (A/AAAA, MX, NS, TXT, CNAME).  
- [ ] Pivot to **IPs/netblocks**; identify shared hosting/ASNs.  
- [ ] Pull **CT logs** for certs; pivot to **related domains**.  
- [ ] Capture evidence links and **export a summary** (PNG/CSV).

### B) IOC Expansion
- [ ] Start from a **phish URL or sender domain**.  
- [ ] Pivot to **resolving IPs**, **historical DNS**, and **certs**.  
- [ ] Cluster related infra; flag likely **C2/redirectors**.  
- [ ] Produce **block lists** (domains/IPs/URLs) with notes.

### C) Brand/Person Surface (Authorized Only)
- [ ] Search **typosquats** and look‑alike domains.  
- [ ] Check **public breach** mentions for work emails (policy‑permitting).  
- [ ] Document impersonation risks and **recommended controls**.

---

## Reporting Tips

- Always include **scope, date/time, and tools** used.  
- Show at least one **graph image** or pivot chain for clarity.  
- Separate **facts** (observed) from **assessments** (inferred).  
- Provide **actionable next steps** (block, monitor, takedown, patch).

---

## Suggested Repo Layout

```
.
├─ README.md
├─ OpenSourceIntelligenceDemo.mp4
├─ docs/
│  ├─ transcript.md
│  ├─ screenshots/
│  └─ references.md
└─ exports/
   ├─ graph.png
   └─ entities.csv
```

---

## Verify Integrity

```bash
# macOS / Linux
shasum -a 256 OpenSourceIntelligenceDemo.mp4

# Windows PowerShell
Get-FileHash -Algorithm SHA256 .\OpenSourceIntelligenceDemo.mp4
```

Expected:
```
1b7908c06e5ffffcde7b3b2039aaedc62a58757f1f2dd2b7717a2deac2570cd7
```

---

## Ethics, Legal & OPSEC

- Only investigate targets you **own or are authorized** to research.  
- Respect **robots.txt**, provider **ToS**, and relevant laws.  
- Assume providers may **log queries**; plan OPSEC accordingly.  
- Avoid disruptive activity during production hours.

---

## References (Starter List)

- Public OSINT tradecraft guides (e.g., Bellingcat, SANS blog posts)  
- Maltego documentation (transforms, machines, graph operations)  
- MITRE ATT&CK® for mapping TTPs during IOC expansion  
- OWASP ASVS / ASR for remediation alignment

---

### Changelog
- August 24, 2025: Initial README created for OSINT demo.

