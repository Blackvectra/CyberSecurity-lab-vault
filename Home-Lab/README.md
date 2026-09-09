# 🛡️ Home Lab Infrastructure

> Documented home lab with Microsoft Defender, OPNsense, Cloudflare Gateway, VLAN segmentation, and SIEM integration. Designed for full visibility, layered defense, and hands-on cybersecurity engineering.

This section documents the build-out of a secured home lab environment using enterprise-grade tooling for threat detection, segmentation, and DNS filtering. It serves as the foundation for a personal SOC-style architecture with full documentation and visibility into each security layer.

> Consolidated into the CyberSecurity Lab Vault from the former `nextlayersec-lab` repository.

---

## 🔐 Security Components

### • Microsoft Defender for Business
- Endpoint protection (Windows + macOS)
- Email filtering via Microsoft 365
- Policy-based protection for IoT zones

### • Cloudflare Gateway
- DNS-level threat filtering
- Custom rules for content and malware control

### • Wi-Fi: Eero Pro 7 Mesh System
- Wi-Fi 7, VLAN support, and high-throughput
- Isolated guest network and lab subnet

### • Firewall Appliance (planned: OPNsense or pfSense)
- Layer 7 filtering and traffic inspection
- Segmenting IoT, lab, and family traffic

### • Managed Switch
- VLAN tagging and port security
- Full network visibility and isolation

---

## 🧠 Why This Matters

This isn't just about better Wi-Fi. It's about building a **mini SOC** at home — with segmentation, DNS intelligence, endpoint protection, and full logging capability. This project demonstrates how to apply blue team principles in a practical, residential environment.

---

## 🗂️ Section Structure

```
Home-Lab/
├── README.md              # This overview
├── diagrams/              # Network topology and architecture diagrams
├── configs/
│   ├── firewall/          # OPNsense / pfSense configs
│   ├── switch/            # VLAN tagging and port security
│   └── Cloudflare-gateway/# DNS filtering rules
├── defender-setup/        # Microsoft Defender for Business policies
├── siem-setup/            # SIEM architecture and detection rules
│   └── detection-rules/   # Windows log monitoring, KQL/YAML detections
├── lessons-learned/       # Real-world issues and misconfigurations
├── logs/                  # Setup and change logs
└── journal/               # Raw working notes / scratchpad (from nextlayersec-notes)
```

---

## 📘 Lessons Learned

Real-world issues and misconfigurations are documented in [`lessons-learned/`](./lessons-learned/README.md). These entries provide insight into debugging, configuration tweaks, and implementation strategy.

Sample entries:
- Eero DNS conflicts with Cloudflare Gateway
- VLAN misrouting due to unmanaged switch behavior
- Defender policy sync delays
- Firewall interface misconfiguration

---

## 🛠️ Roadmap

- [ ] Finalize OPNsense deployment and rule tuning
- [ ] Launch Wazuh or Graylog SIEM integration
- [ ] Configure full DNS log forwarding + alerting
- [ ] Implement VLAN-based policy enforcement
- [ ] Write blog post breakdown at [Substack](https://blackvectra.substack.com/p/home-lab-pro-security-my-layered)

---

## 📬 Contact

Built and maintained by [Matthew Levorson](https://nextlayersec.io)
🌐 [nextlayersec.io](https://nextlayersec.io)
