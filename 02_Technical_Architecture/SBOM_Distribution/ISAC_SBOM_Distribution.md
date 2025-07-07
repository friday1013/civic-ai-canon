# HOWTO: ISACs as SBOM Distributors

**Purpose**  
This document is designed to help Information Sharing and Analysis Centers/Organizations (ISACs/ISAOs) develop a practical **Control Architecture** for distributing Software Bills of Materials (SBOMs) in support of resilient software supply chains.

---

## 🔹 Background

SBOM sharing has evolved since 2017 through collaboration with NTIA and CISA. Early focus was on delivery from software producers to consumers. As the ecosystem matures, **ISACs** are ideally positioned to act as **SBOM Distributors**—facilitating discoverability, access, and transport between parties.

This work builds on the **SBOM Sharing Lifecycle Report** and **SBOM Sharing Roles and Considerations**, canonical outputs from the U.S. SBOM public/private process.

---

## 🔹 Why ISACs?

ISACs are trusted, sector-based entities designed for collective threat intelligence. Their roles—24/7 monitoring, validated membership, secure tooling—make them natural hubs for secure SBOM exchange.

Established by Presidential Decision Directive-63 (1998), ISACs are key to cyber and physical critical infrastructure protection. As SBOM distribution grows in importance, ISACs can serve as connective tissue across trusted nodes.

---

## 🔹 Control Architecture Framework

This framework helps ISACs define their role across three phases of SBOM sharing:

1. **Discovery** – Making SBOMs findable  
2. **Access** – Managing permissions and authenticity  
3. **Transport** – Ensuring integrity and secure delivery

Each phase includes decisions about tooling, automation, authorization, storage, and auditability.

---

## 🔹 Example Architectures

- **Example 1**: Directory-style sharing. The ISAC maintains a high-quality index of SBOMs hosted elsewhere. Focus: discovery and metadata accuracy.

- **Example 2**: Real-time relay. The ISAC validates and serves SBOMs directly with low latency. Focus: all three phases with tight access control and transport assurances.

---

## 🔹 SBOM Lifecycle Role Breakdown

### 🕘️ Discovery
- Define how SBOMs are found: vendor URLs, embedded in source code, or automated feeds.
- Distributors must:
  - Respect author guidelines
  - Communicate expectations to authors and consumers
  - Maintain searchable, secure storage

### 🕘️ Access
- Identity verification of both authors and consumers
- Logging and auditing of access events
- Legal and regulatory compliance
- Granular access permissions

### 🕘️ Transport
- Integrity, chain-of-custody documentation
- Secure transport mechanisms
- Scalability across participants
- Alignment with both author and consumer needs

---

## 🔹 Worksheet (for ISACs/ISAOs)

- **Organization Description**  
- **Purpose / Philosophy**  
- **Authentication & Authorization**  
- **Secure Storage & Transport**  
- **Audit and Forensics**  
- **Tooling Attestation (e.g., SBOMs for SBOM tools)**  
- **Target Markets and Members**  
- **SBOM Quality Benchmarks**  

---

## 🔹 Next Steps

1. Define your SBOM Control Architecture using this framework  
2. Share insights and architectures with peer ISACs via CISA working group  
3. Iterate based on evolving tools, trust models, and regulations  
4. Deploy live SBOM distribution pilots in high-priority sectors

> **Want to join the working group?**  
Contact [email protected] to participate.

---

## 🔮 Canonical Context

This guidance is part of the Civic AI Canon’s exploration of **Distributed Trust Meshes**, **Resilient Software Supply Chains**, and the role of **Semantic Companions in Secure Knowledge Exchange**.

References: 

https://www.cisa.gov/resources-tools/resources/sbom-sharing-roles-and-considerations
https://www.cisa.gov/resources-tools/resources/software-bill-materials-sbom-sharing-lifecycle-report
https://www.ntia.gov/sites/default/files/publications/ntia_sbom_sharing_exchanging_sboms-10feb2021_0.pdf
