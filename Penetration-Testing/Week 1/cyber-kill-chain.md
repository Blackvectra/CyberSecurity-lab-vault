# The Cyber Kill Chain — Video

> Part of the NextLayerSec learning library. This repo packages a short explainer video on the **Cyber Kill Chain** model with notes, references, and reusable assets.

---

## 📦 File Metadata

- **Filename:** `The-Cyber-Kill-Chain.mp4`  
- **Size:** 23.72 MB  
- **Length:** 12:14  
- **SHA‑256:** `37cab166bcadddf035b64cb6dd48cfbbfc6735c9478964afe12d55f78c29e257`  
- **Added:** August 24, 2025

> Tip: Keep the checksum in the README so you can verify file integrity after transfers or cloning.

---

## ▶️ Quick View / Embed

GitHub can play MP4 files directly. You can either click the file in the repo, or embed it into docs/pages using HTML:

```html
<video src="./The-Cyber-Kill-Chain.mp4" controls preload="metadata" width="720">
  Sorry, your browser doesn’t support embedded videos. 
  <a href="./The-Cyber-Kill-Chain.mp4">Download the MP4</a> instead.
</video>
```

For Markdown, just link to it:

```md
[Watch the video](./The-Cyber-Kill-Chain.mp4)
```

---

## 🎯 What You’ll Learn

- The **7 stages** of the Cyber Kill Chain (Lockheed Martin):  
  1) Reconnaissance · 2) Weaponization · 3) Delivery · 4) Exploitation ·  
  5) Installation · 6) Command & Control (C2) · 7) Actions on Objectives
- How defenders can **detect / disrupt** each stage.
- Where the Kill Chain **fits vs.** MITRE ATT&CK, Unified Kill Chain, and modern detection programs.

---

## 🧭 Suggested Repo Layout

If you plan to add notes, a transcript, and screenshots:

```
.
├─ README.md
├─ The-Cyber-Kill-Chain.mp4
├─ docs/
│  ├─ transcript.md
│  └─ slides.pdf
└─ images/
   └─ thumbnail.jpg
```

---

## 📝 Transcript (Optional)

Create a transcript for accessibility / search:

**With FFmpeg + Whisper (open‑source):**
```bash
# Extract audio (optional but speeds things up)
ffmpeg -i The-Cyber-Kill-Chain.mp4 -ac 1 -ar 16000 -vn audio.wav

# Using openai-whisper CLI (Python) — install: pip install -U openai-whisper
whisper audio.wav --model small --language en --task transcribe --output_format srt --verbose False

# Move/rename as docs/transcript.md if you prefer Markdown
```

**Generate a thumbnail (optional):**
```bash
# Grab a frame at 5 seconds
ffmpeg -ss 00:00:05 -i The-Cyber-Kill-Chain.mp4 -frames:v 1 -q:v 2 images/thumbnail.jpg
```

---

## 🔒 Licensing & Attribution

- If this video is **your original work**, choose a license (e.g., MIT for code + CC BY‑SA 4.0 for media) and add `LICENSE` files.  
- If it includes **third‑party material**, ensure you have rights to share in a public repo and include attributions.

---

## 🔗 References & Further Reading

- Lockheed Martin. *Intelligence‑Driven Computer Network Defense Informed by Analysis of Adversary Campaigns and Intrusion Kill Chains.*  
- MITRE ATT&CK® knowledge base — to map techniques to stages.  
- The **Unified Kill Chain** model for modern, end‑to‑end coverage.

---

## ✅ Integrity Check

To verify the file after cloning or downloading:

```bash
# macOS / Linux
shasum -a 256 The-Cyber-Kill-Chain.mp4

# Windows PowerShell
Get-FileHash -Algorithm SHA256 .\The-Cyber-Kill-Chain.mp4
```

Expected:
```
37cab166bcadddf035b64cb6dd48cfbbfc6735c9478964afe12d55f78c29e257
```

---

## 💡 How to Use in NextLayerSec

- Link this README in your **WordPress/Docs** section.  
- Reference the stages in your **Blue‑Team Playbooks** and detection checklists.  
- Use the video in **training**: pair it with a table mapping each stage to your current controls (e.g., DNS filtering, EDR, email security, DLP).

---

### Changelog
- August 24, 2025: Initial README with metadata, usage, and references.
