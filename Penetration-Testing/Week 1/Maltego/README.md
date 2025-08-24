# Maltego — OSINT Graph & Link Analysis (Overview for GitHub)

**Maltego** is a graph‑based **OSINT** and **link‑analysis** application. It helps you discover relationships between **entities** (domains, IPs, people, emails, companies, SSL certs, etc.) by running **transforms** (scripted pivots) against open and commercial data sources and visualizing the results as an interactive graph.

Use this README in your GitHub repo to explain what Maltego is, when to use it, and how to get started—especially with the free **Community Edition (CE)**.

> TL;DR: Maltego turns scattered OSINT clues into a connected picture you can see, pivot, and report on.

---

## Table of Contents

- [What is Maltego?](#what-is-maltego)
- [Why use it? (When it shines)](#why-use-it-when-it-shines)
- [Key Concepts](#key-concepts)
- [Editions at a Glance](#editions-at-a-glance)
- [How it Works (Architecture & Privacy)](#how-it-works-architecture--privacy)
- [Typical Workflows](#typical-workflows)
- [Install & First‑Run Setup](#install--first-run-setup)
- [Transform Hub & API Keys](#transform-hub--api-keys)
- [Working Smart in Graphs](#working-smart-in-graphs)
- [Export & Reporting](#export--reporting)
- [Limits & Gotchas](#limits--gotchas)
- [Legal, Ethics & OPSEC](#legal-ethics--opsec)
- [Repo Structure (Optional)](#repo-structure-optional)
- [FAQ](#faq)
- [Resources](#resources)
- [Changelog](#changelog)

---

## What is Maltego?

**Maltego** is a desktop tool for **open‑source intelligence (OSINT)** and **investigative link analysis**. You start with one or more **entities** (e.g., a domain, IP, or email). You then run **transforms** that query data sources and return related entities—building a **graph** that shows how things connect.

- Visual, **drag‑and‑drop** investigation workspace
- **Transforms** (pivots) to enrich and expand from seed data
- **Machines** (automation) to chain common transform sequences
- Suitable for **blue teams, DFIR, threat intel, red teaming, brand protection, and research**

> Think: “Google + WHOIS + DNS + CT logs + more, all as a graph you can explore.”

---

## Why use it? (When it shines)

- **Footprinting**: Map an organization’s external attack surface (domains → DNS → IPs → netblocks → certs → related domains).
- **IOC Expansion**: Take a phish URL, domain, IP, or cert fingerprint and pivot to adjacent infrastructure.
- **Person/Brand OSINT**: Enrich emails/usernames with public sources to find social profiles or breaches (when permitted).
- **Threat Infrastructure Clustering**: Connect recurring hosts, registrants, and certs used across campaigns.
- **Reporting**: Export a graph that explains relationships to non‑technical stakeholders in seconds.

When **not** to use: If you only need a one‑line lookup, the overhead may be unnecessary—use Maltego when **relationships** matter.

---

## Key Concepts

- **Entity** → a node in the graph (Domain, IP Address, URL, Person, Email Address, SSL Certificate, Netblock, Organization, etc.).  
- **Transform** → a scripted query that pivots from one entity to others (e.g., “Domain → DNS Records”, “IP → Domains (rDNS)”).  
- **Machine** → a prebuilt workflow that chains transforms (e.g., “Footprint L1”).  
- **Transform Hub** → catalog where you install/configure providers (free or paid).  
- **Graph Layouts/Views** → hierarchical/organic layouts, filters, collections and styles to keep large graphs usable.  
- **Evidence/Detail** → every transform records source, parameters, and timestamp for traceability.

---

## Editions at a Glance

> Feature names/limits evolve—this is a practical overview for planning.

| Edition | Best for | Notes |
|---|---|---|
| **Community Edition (CE)** | Learning, small demos | Free; internet required; entity/rate limits; good to start. |
| **Paid Desktop** | Analysts, day‑to‑day work | Higher limits, more features; access to premium providers. |
| **Enterprise/Server** | Teams, scale, privacy | Shared infra, collaboration; can self‑host transforms for OPSEC. |

---

## How it Works (Architecture & Privacy)

1. You select an **entity** and run a **transform**.  
2. The transform **queries a provider** (public or commercial API).  
3. Results return as **new entities** on your graph with evidence.  
4. Some providers require **API keys** you add in Transform Hub.  
5. For sensitive workflows, you can run **local/self‑hosted transforms**.

> CE runs via the internet; assume provider logs exist—plan OPSEC accordingly.

---

## Typical Workflows

### A) Domain Footprint (Attack Surface Snapshot)
1. Add your **authorized** domain (e.g., `example.org`) to a new graph.  
2. Run **Footprint L1** (or right‑click the domain and run DNS/IP/cert transforms).  
3. Pivot to **netblocks** and **related domains** via cert/WHOIS links.  
4. Tag interesting items (old subdomains, shared infra, test hosts).  
5. Export a PNG/CSV for your report.

### B) IOC Expansion (DFIR)
1. Start with **URL / Domain / IP / SSL Cert / Hash**.  
2. Run transforms for **passive DNS, WHOIS, CT logs, pages/refs**.  
3. Group nodes by likely **campaign**; extract IOCs for blocking.  
4. Save `.mtgl`, export graph image for the incident timeline.

### C) Person/Brand OSINT
1. Start with a **Person** or **Email Address** entity.  
2. Use provider transforms to find **usernames, social profiles, breaches** (where allowed).  
3. Annotate confidence and verification; avoid doxxing or policy violations.

---

## Install & First‑Run Setup

### Windows / macOS
1. Download the desktop installer from the vendor site.  
2. Install and **sign in** (create a free account if needed).  
3. Choose **Community Edition** to start (you can upgrade later).

### Linux (e.g., Kali)
```bash
sudo apt update
sudo apt install maltego
# Launch from menu or run:
maltego
```

### First‑Run
- Accept license → pick **CE** if prompted.  
- Let it fetch default **entities/transforms/machines**.  
- Open **Transform Hub** to add providers you need.

---

## Transform Hub & API Keys

- Browse the **Transform Hub** and enable sources (free + paid).  
- Add **API keys** where required (e.g., Shodan, HIBP, VirusTotal—provider availability varies).  
- Keep an eye on **quotas** and **throttling**; CE has rate/entity limits.

---

## Working Smart in Graphs

- **Expand selectively**—avoid exploding the graph.  
- Use **filters** and **collection nodes** to tame volume.  
- **Color‑code** by type or confidence; **rename** important entities.  
- Add **Notes** (entity‑level and graph‑level) to capture reasoning.  
- Save often (`.mtgl`); version snapshots for major steps.

---

## Export & Reporting

- **Graph images** → PNG/SVG/PDF for presentations and tickets.  
- **Entities** → CSV export for IOC lists and spreadsheets.  
- **Share** → `.mtgl` project files (recipients need the same transforms).

---

## Limits & Gotchas

- CE is fantastic for learning but has **caps**—don’t plan large hunts on it.  
- Public OSINT can be incomplete or noisy—**verify with multiple sources**.  
- Big graphs become messy—**curate** and **label** aggressively.  
- Some high‑value transforms require **paid APIs** or licenses.

---

## Legal, Ethics & OPSEC

- Only investigate targets you **own or are authorized** to research.  
- Respect **robots.txt**, service **ToS**, and org policy.  
- Time heavy lookups to avoid production impact.  
- Assume providers **log queries**; plan **OPSEC** if your scenario requires it.

---

## Repo Structure (Optional)

If your GitHub repo hosts Maltego notes/demos, consider this layout:

```
.
├─ README.md
├─ docs/
│  ├─ maltego-overview.md
│  ├─ screenshots/
│  └─ MaltegoDemo.mp4
├─ labs/
│  ├─ domain-footprint/
│  └─ ioc-expansion/
└─ cheatsheets/
   └─ maltego-shortcuts.md
```

---

## FAQ

**Is Maltego a search engine?**  
No—Maltego **queries** many sources via transforms and shows **relationships** as a graph.

**Can I use it offline?**  
CE needs internet for most transforms. Enterprise setups can run **local/self‑hosted** transforms.

**Do I need paid APIs?**  
Not to start. Paid APIs unlock deeper or faster data; CE + free sources is enough to learn.

---

## Resources

- Official site & docs (installers, edition details, tutorials)  
- Transform Hub (inside the app)  
- OSINT community guides and trainings

> Replace the bullets above with links you prefer to recommend to readers of your repo.

---

## Changelog

- August 24, 2025: Initial version.
