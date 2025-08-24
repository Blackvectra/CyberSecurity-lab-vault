# Maltego — OSINT & Footprinting README (CE‑Friendly)

A copy‑paste guide you can drop into a repo or wiki to help students and analysts install **Maltego**, set it up, and run practical OSINT footprinting tasks—especially with the free **Community Edition (CE)**.

> Purpose: turn Maltego into a repeatable workflow (not a one‑off demo).

---

## What is Maltego?

**Maltego** is a graph‑based OSINT tool that runs **transforms** (queries) against data sources (DNS, search engines, social, paste sites, etc.) and visualizes **entities** (domains, IPs, people, emails, companies, infrastructure) and their relationships. You can chain transforms into **machines** to automate common tasks.

---

## Prerequisites

- A Maltego account (free **CE** or paid editions).  
- Internet access for transforms.  
- (Optional) API keys for 3rd‑party data sources (Shodan, Have I Been Pwned, etc.).

---

## Install

### Kali Linux
```bash
sudo apt update
sudo apt install maltego
# Launch from menu: Applications → Information Gathering → Maltego
# or run:
maltego
```

### Windows / macOS
- Download the installer from **maltego.com** and follow the prompts.
- Launch **Maltego CE** on first run if prompted to choose an edition.

---

## First‑Run Setup (CE)

1. **Accept License** → choose **Maltego CE (Free)** if asked.  
2. **Create/Login** with your Maltego ID (email + password).  
3. Allow the installer to fetch **transforms/entities/machines**.  
4. Choose **Normal privacy mode** (CE requires internet lookups).  
5. Pick a browser (system default is fine).  
6. Finish setup — you’ll land on the **Home** screen.

> Terms:
> - **Transform** = a scripted query against a data source.  
> - **Entity** = a node (domain, IP, person, email, etc.).  
> - **Machine** = a prebuilt transform chain that automates a task.

---

## Quickstart: Domain Footprinting (Footprint L1 CE)

Goal: build a basic footprint of a target domain using only CE‑friendly transforms.

1. **Create a new Graph** (Home → *New Graph*).  
2. Go to **Machines** → **Run Machine** → select **Footprint L1 (CE)**.  
3. When prompted for a **target**, enter your domain (e.g., `example.org`).  
4. Run. CE may limit total entities; that’s normal.  
5. Explore the graph:
   - Zoom out/in, switch to **Hierarchical** layout.
   - Right‑click interesting nodes (domain, DNS records, IPs) → run more transforms.
6. Save the graph: **File → Save As** (`.mtgl`).

**What you’ll typically see**
- DNS records (A/AAAA/MX/NS/TXT), IP ranges, netblocks, related domains, URLs, sometimes discovered technologies and pages.

---

## Quickstart: URL → Network & Domain Info

1. **Machines** → **Run Machine** → pick **URL To Network And Domain Information**.  
2. Enter a full URL (e.g., `https://www.example.org`).  
3. Run and review: domain, DNS, IPs, certificates, historical snapshots (try Wayback transforms on the domain).

---

## Manual Transforms (Common Flow)

You don’t need machines for everything. Try **right‑clicking** an entity and running transforms manually:

- **Domain →** *To DNS Name*, *To DNS Records*, *To IP Address*, *To Netblocks*, *To MX/NS*  
- **IP Address →** *To Domain / Reverse DNS*, *To Netblock*, *To Geo*  
- **Person →** *To Email Addresses*, *To Social Profiles* (varies by data source)  
- **Email Address →** *To Breaches* (if you have HIBP/other transforms), *To Social Profiles*  
- **Website →** *To Pages*, *To Technologies*, *To External Links*

> Tip: Pin **Most Used** transforms to speed up repetitive actions.

---

## Working Efficiently in CE (Rate/Limits)

- Expect **entity caps** and transform throttling; CE is for learning.  
- Start small: one target, a few transforms at a time.  
- Use **view filters** (upper‑right) to hide noise.  
- **Entity Detail** pane shows source, properties, and transform evidence.  
- Rename important nodes and **add notes** for reporting.  
- Consider paid add‑ons/API keys if you need deeper sources.

---

## Exporting & Reporting

- **Graph** → export as **PNG/SVG/PDF** for slides or documentation.  
- **Table View** → export entities to **CSV** (good for pivoting in spreadsheets).  
- Save the working file as **`.mtgl`** so you can continue later.

---

## Privacy, Legal & Ethics

- Only investigate targets you **own/are authorized** to test or where OSINT is clearly permitted.  
- Respect site **robots.txt** and API/service **terms of use**.  
- Avoid high‑impact transforms on production during business hours.  
- Log what you ran: target, transforms, timestamps, outcomes.

---

## Troubleshooting

- **Transforms fail / time out** → check internet access, try fewer transforms, verify API keys.  
- **Empty results** → CE limits, target has few public artifacts, or transforms not applicable. Try different pivots.  
- **Login issues** → confirm Maltego ID/password, retry after a few minutes, or reinstall transforms from **Transform Hub**.

---

## Appendix A — Keyboard Shortcuts (Essentials)

- **Ctrl/Cmd + L**: Layout menu  
- **Ctrl/Cmd + F**: Find entity in graph  
- **Ctrl/Cmd + Mousewheel**: Zoom  
- **Space**: Pan (hold)  
- **Ctrl/Cmd + S**: Save

---

## Appendix B — Common Entities

- **Infrastructure:** Domain, DNS Name, IP Address, Netblock, NS, MX, URL, Website, SSL Cert  
- **People/Org:** Person, Email Address, Phone Number, Organization, Location  
- **Content:** Document, Image, Social Profile, Username, Alias

---

## Appendix C — Suggested Lab Checklist

- [ ] Install and activate **Maltego CE**.  
- [ ] Create a **new graph** and save it.  
- [ ] Run **Footprint L1 (CE)** against your authorized domain.  
- [ ] Run **URL → Network & Domain Info** for a known URL.  
- [ ] Manually pivot from **Domain → DNS → IP → Netblock**.  
- [ ] Export **PNG** of your graph and **CSV** of entities.  
- [ ] Write a short findings note (what was discovered, what’s interesting, what needs follow‑up).

---

## Changelog
- August 24, 2025: Initial version.
