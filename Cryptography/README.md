# Cryptography

## Overview

This section covers cryptography concepts, challenges, and labs. Cryptography is fundamental to cybersecurity -- it protects data in transit and at rest, and understanding how it works (and breaks) is essential for both offensive and defensive security.

---

## Topics

### Symmetric Encryption
- AES, DES, 3DES, Blowfish
- Block cipher modes (ECB, CBC, CTR, GCM)
- Key management and distribution

### Asymmetric Encryption
- RSA, ECC, Diffie-Hellman
- Digital signatures and certificates
- PKI (Public Key Infrastructure)

### Hashing
- MD5, SHA-1, SHA-256, SHA-3
- Password hashing (bcrypt, scrypt, Argon2)
- Hash collisions and birthday attacks

### Encoding & Obfuscation
- Base64, hex encoding, URL encoding
- XOR ciphers
- ROT13 and Caesar ciphers

### Applied Cryptography
- TLS/SSL handshake analysis
- Certificate pinning and validation
- Cryptographic protocol weaknesses

---

## Tools

| Tool | Purpose |
|------|---------|
| `openssl` | Encryption, hashing, certificate management |
| `hashcat` | GPU-accelerated hash cracking |
| `john` | Password hash cracking |
| `CyberChef` | Browser-based encoding/decoding/crypto operations |
| `gpg` | GnuPG encryption and signing |
| `cryptool` | Visual cryptography learning tool |

---

## CTF Challenge Categories

- **Classical ciphers** -- Caesar, Vigenere, substitution
- **Modern crypto** -- RSA with weak parameters, AES-ECB patterns
- **Hash cracking** -- Given a hash, find the plaintext
- **Encoding chains** -- Multiple layers of encoding (base64 > hex > ROT13)

---

## References

- [CyberChef](https://gchq.github.io/CyberChef/)
- [Crypto101 (free book)](https://www.crypto101.io/)
- [Khan Academy Cryptography](https://www.khanacademy.org/computing/computer-science/cryptography)

---

> _Add your challenge writeups and lab notes below as you complete them._
