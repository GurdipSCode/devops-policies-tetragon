# 🛡️ Tetragon OPA Governance

![OPA](https://img.shields.io/badge/OPA-Policy--as--Code-blue?logo=openpolicyagent&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Policy%20Governance-326CE5?logo=kubernetes&logoColor=white)
![GitOps](https://img.shields.io/badge/GitOps-Enforced-success?logo=git&logoColor=white)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-critical)
![License](https://img.shields.io/badge/License-Apache%202.0-lightgrey)

Policy-as-Code governance for **Cilium Tetragon TracingPolicies**, enforced using **Open Policy Agent (OPA)** and designed for **GitOps-first Kubernetes platforms**.

This repository **does not deploy** Tetragon or Kubernetes resources.  
It exists purely to **validate, govern, and audit** runtime security policies *before* they reach production.

---

## 🧩 What this repo governs

- ✅ Mandatory labels & annotations  
- 🧠 MITRE ATT&CK technique mapping  
- 🚫 Safe use of `Block` actions  
- 🌍 Environment-aware enforcement (dev / stg / prd)  
- 👥 Ownership & approval controls  

All enforcement happens **in CI**, not at runtime.

---

## 🧠 Architecture

