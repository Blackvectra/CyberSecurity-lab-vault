# Web Application Security

## Overview

Web application security focuses on identifying and exploiting vulnerabilities in web-based applications. This section covers the OWASP Top 10, common web attack vectors, and testing methodologies.

---

## OWASP Top 10 (2021)

| # | Vulnerability | Description |
|---|--------------|-------------|
| A01 | Broken Access Control | Unauthorized access to resources or functions |
| A02 | Cryptographic Failures | Weak or missing encryption of sensitive data |
| A03 | Injection | SQL, NoSQL, OS command, LDAP injection |
| A04 | Insecure Design | Missing or ineffective security controls by design |
| A05 | Security Misconfiguration | Default configs, open cloud storage, verbose errors |
| A06 | Vulnerable Components | Outdated libraries, frameworks, or dependencies |
| A07 | Authentication Failures | Broken authentication, session management |
| A08 | Software & Data Integrity | Insecure CI/CD, unsigned updates, deserialization |
| A09 | Logging & Monitoring Failures | Insufficient logging, alerting, or incident response |
| A10 | SSRF | Server-Side Request Forgery -- making the server fetch attacker-controlled URLs |

---

## Common Attack Techniques

### SQL Injection
- Union-based, error-based, blind (boolean/time), out-of-band
- Tools: `sqlmap`, manual testing with `'OR 1=1--`

### Cross-Site Scripting (XSS)
- Reflected, stored, DOM-based
- Payload testing and filter bypass techniques

### Cross-Site Request Forgery (CSRF)
- Forging authenticated requests
- Token validation bypass

### Server-Side Request Forgery (SSRF)
- Internal service enumeration
- Cloud metadata access (169.254.169.254)

### Authentication Bypass
- Default credentials, credential stuffing
- JWT manipulation, session fixation
- Password reset flaws

### File Upload Vulnerabilities
- Web shell upload, extension bypass
- Content-type manipulation

---

## Tools

| Tool | Purpose |
|------|---------|
| `Burp Suite` | Web application proxy and scanner |
| `OWASP ZAP` | Free web app security scanner |
| `sqlmap` | Automated SQL injection exploitation |
| `ffuf` / `gobuster` | Directory and parameter fuzzing |
| `nikto` | Web server vulnerability scanner |
| `wfuzz` | Web application fuzzer |
| `Postman` / `curl` | API testing |
| `Browser DevTools` | Request inspection and modification |

---

## Testing Methodology

1. **Reconnaissance** -- Map the application (pages, forms, APIs, technologies)
2. **Authentication testing** -- Login flows, session management, password policies
3. **Authorization testing** -- Access control between roles and users
4. **Input validation** -- Test all inputs for injection vulnerabilities
5. **Business logic** -- Test application-specific workflows for abuse
6. **Configuration** -- Check headers, CORS, TLS, error handling

---

## Practice Platforms

- [OWASP WebGoat](https://owasp.org/www-project-webgoat/)
- [DVWA (Damn Vulnerable Web Application)](https://github.com/digininja/DVWA)
- [PortSwigger Web Security Academy](https://portswigger.net/web-security)
- [HackTheBox](https://www.hackthebox.com/)
- [TryHackMe](https://tryhackme.com/)

---

## References

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- [PortSwigger Research](https://portswigger.net/research)
- [HackTricks Web](https://book.hacktricks.xyz/pentesting-web/web-vulnerabilities-methodology)

---

> _Add your web application testing notes and writeups below as you complete them._
