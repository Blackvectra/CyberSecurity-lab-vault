# Maltego — Overview & Field Guide

A concise, copy‑paste README that explains **what Maltego is**, when to use it, key concepts (entities, transforms, machines), common workflows, and practical tips. Drop this into a repo/wiki to brief students or teammates.

---

## What is Maltego?

**Maltego** is a graph‑based OSINT and link‑analysis tool. It lets you pivot across public and commercial data sources using **transforms** (scripted queries) and visualize relationships between **entities** (domains, IPs, people, emails, companies, infrastructure, etc.). Investigators use it for:
- **Footprinting & infrastructure mapping** (DNS, IPs, netblocks, certs, tech stacks)
- **Person/brand protection** (emails, usernames, social profiles, breaches)
- **Threat intel enrichment** (IOCs → whois, passive DNS, CT logs, open sources)
- **Incident scoping** (pivot from a phish URL, malware hash, C2 host, etc.)

> Think: one workspace where you can *see* pivots and evidence as a graph.

---

## Where Maltego Fits (Use Cases)

- **Blue team / DFIR:** Expand IOCs, find related domains/IPs, spot shared certs.  
- **Threat intel:** Enrich indicators, cluster infrastructure, track campaigns.  
- **OSINT investigations:** People/org lookups, surface‑web link‑analysis.  
- **Brand/security research:** Typosquat discovery, external attack surface snapshots.  

Maltego complements tools like **Shodan**, **VirusTotal**, **Ghidra**, **Kibana**, **ATT&CK Navigator** by focusing on **relationship discovery** and **visual reasoning**.

---

## Key Concepts

- **Entity:** A node on the graph (e.g., *Domain, IP Address, Person, Email Address, URL, SSL Certificate, Netblock, Organization, Username*). Entities carry **properties** (e.g., FQDN, ASN, registrant).  
- **Transform:** A query that **pivots** from one entity to another (e.g., *Domain → To DNS Records*, *IP → To Domains (Reverse DNS)*). Transforms can be free or require API keys.  
- **Machine:** A prebuilt **workflow** that chains transforms (e.g., *Footprint L1*).  
- **Transform Hub:** Catalog of transform providers. Install/enable sources here.  
- **Graph & Views:** Layouts (hierarchical, organic), filters, grouping/collections, and visual styles that make large graphs manageable.  
- **Evidence:** Each transform adds **detail** (source, timestamp, parameters). Use the **Detail**/**Properties** panes to keep investigative notes.

---

## Editions & Access (High‑Level)

- **Community Edition (CE)** — free, great for learning; rate/entity limits apply.  
- **Paid Desktop** — higher limits, more features, commercial transforms allowed.  
- **Enterprise/Server Options** — shared infrastructure, collaboration, on‑prem transform execution (privacy/scale).  

> Names and features vary over time—pick CE to start, upgrade if you need scale or premium sources.

---

## How Transforms Run (Privacy/Architecture)

- Most transforms execute via **remote providers** (your query → provider API → results back to the graph).  
- You can run **local** or **self‑hosted transforms** for sensitive workflows.  
- Access to some sources requires **API keys** you configure in the Transform Hub.  
- CE is **internet‑dependent**; treat queries and targets with normal OSINT OPSEC.

---

## Typical Workflows (Step‑By‑Step)

### A) Domain Footprint (External Attack Surface Snapshot)
1. Create a **new graph**, add your authorized domain (e.g., `example.org`).  
2. Run a footprint **machine** (e.g., *Footprint L1*).  
3. Pivot: **Domain → DNS → IPs → Netblocks → Certificates → Related Domains**.  
4. Tag/annotate interesting nodes (old subdomains, dev hosts, shared infra).  
5. Export a **PNG** of the graph and a **CSV** of entities for tracking.

### B) Person/Brand Pivot
1. Start with a **Person** or **Email Address** entity.  
2. Run transforms: **Email → Breaches**, **Email/Name → Social Profiles / Usernames** (provider‑dependent).  
3. Cluster by platforms; add **Notes** and **bookmarks** on verified links.  
4. Summarize findings and risks (impersonation, exposed creds).

### C) IOC Expansion (DFIR)
1. Start with a **URL**, **Domain**, **IP**, **Hash**, or **SSL Cert**.  
2. Run transforms to get **WHOIS, passive DNS, CT logs, related hosts/pages**.  
3. Group nodes by **campaign/infrastructure** and record IOCs for blocking.  
4. Export indicators (CSV) and a **graph view** for the incident report.

---

## Working Smart in Graphs

- **Control sprawl:** expand selectively; use **filters** and **collection nodes**.  
- **Color‑code/tag** entities by type or confidence level.  
- Add **Notes** on entities and at the graph level to capture reasoning.  
- Keep **API usage** in mind (throttling, quotas).  
- Save often (`.mtgl`). Export **PNG/PDF** for slides; **CSV** for lists.  

---

## Limits & Gotchas

- CE limits entities/rate—perfect for training, not for large‑scale hunts.  
- Public OSINT can be **noisy/incomplete**; verify with multiple sources.  
- Graphs can explode in size—curate, collapse, and label to stay sane.  
- Some high‑value transforms require **paid APIs** or licenses.

---

## Ethics, Legal & OPSEC

- Only investigate targets you **own or are authorized** to research.  
- Respect **ToS** and **robots.txt**. Avoid disruptive queries during business hours.  
- Record **what/when** you ran for reproducibility.  
- Be mindful that transform providers may **log lookups**; plan OPSEC accordingly.

---

## Install (Quick Notes)

- **Windows/macOS:** download the desktop installer from Maltego’s site.  
- **Linux (e.g., Kali):** install from the distro or vendor package; launch from menu or CLI (`maltego`).  
- **Sign in** with your Maltego account; enable sources in **Transform Hub**; add API keys as needed.

---

## Export & Collaboration

- **Graph images:** PNG/SVG/PDF for reporting.  
- **Entity tables:** CSV exports for IOC lists or spreadsheets.  
- **Project files:** share `.mtgl` (ensure recipients have needed transforms).  
- For teams, consider **shared transform servers** and agreed‑upon styles/notations.

---

## Glossary (Quick)

- **Entity:** a typed node with properties.  
- **Transform:** a scripted pivot from one entity to others.  
- **Machine:** a chain of transforms (automation).  
- **Transform Hub:** marketplace/config for data sources.  
- **Collection Node:** cluster that groups many similar entities.  
- **Layout:** algorithm to arrange nodes visually.

---

## Starter Checklist

- [ ] Install desktop app and **sign in**.  
- [ ] Open **Transform Hub**; enable a few core sources.  
- [ ] Add any **API keys** (if you have them).  
- [ ] Create a **new graph** and save it.  
- [ ] Run a **small** footprint or IOC expansion and export results.  
- [ ] Write a short **findings** summary for your notes/report.

---

## Optional Assets

If your repo includes demo materials, consider adding:
- `/docs/MaltegoDemo.mp4` – short walkthrough of a domain footprint  
- `/docs/screenshots/*.png` – before/after graph views  
- `/cheatsheets/` – keyboard shortcuts, transform lists, style guide

---

### Changelog
- August 24, 2025: Initial version.
