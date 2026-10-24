# FINAL 33-SLIDE BACKUP MASTER DECK
**Project:** NTL Shurokkha (Team Red Sky) | Grand Finale Presentation  
**Client:** New Telecom Ltd (NTL, Bangladesh — 58.6M active subscribers)  
**Governing Statute:** Personal Data Protection Act 2026 (Act No. 63 of 2026 / ব্যক্তিগত উপাত্ত সুরক্ষা আইন, ২০২৬)  
**Style Guidelines:** Relaxed Template (≤ 80 visible words, 18pt–24pt card typography, telegraphic syntax, zero elementary arithmetic formulas).

---

## TABLE OF CONTENTS & MASTER INDEX (SLIDE B00)

```
                            BACKUP SLIDE DIRECTORY (B00)
    Click any drawer to jump directly to the verified technical, legal, or financial proof.

 [ DRAWER 1: CONSUMER PRIVACY & IDENTITY ]     [ DRAWER 2: ARCHITECTURAL MOAT & LEGAL ]
 • B01: Fatema: Delivery Stalking & Sec 16      • B03: Academic Case Study (Haque et al.)
 • B02: Kashem Bhai: Roadside Kiosk Ledgers     • B05: Systemic Crisis: Macro Precedents
 • B04: Fahim: Child Consent & Profiling Ban    • B07: PDPA Erasure vs Telecom Retention
 • B06: Tanvir: Recycled SIM & Bank OTP Risks   • B08: Network Moat: App Limits vs Core
 • B16: Child Protection: Line Shield Dial      • B11: Stealth Number: 24h Virtual Bridge
 • B17: Split-ZK: Age Proof Without ID          • B11b: Blind Flexiload: 6-Digit USSD / QR
                                                • B12: Lawful Interception: Dual-Key WORM
 [ DRAWER 3: B2B FRAUD, FINTECH & BANKING ]     • B14: Dialect Voice AI: 4 Regional Accents
 • B18: Airtime Vault: No PIN, No Debit         
 • B19: CAMARA API: Bank SIM-Swap (+11.4 Cr)   [ DRAWER 4: SOVEREIGN AI & DATA FABRIC ]
                                                • B21: Data Lineage & Masked Care Desk
 [ DRAWER 5: GOVERNANCE, VENDORS & LAW ]        • B22: Sovereign AI Gateway: Data Sanitization
 • B26: Enterprise Privacy RACI & CDO Veto      • B23: Stopping AI Attackers & Model Inversion
 • B27: Vendor Governance: WASI Sandboxes       • B24: 6 Enterprise AI Systems Inventory
 • B28: Employee Privacy, Shadow AI & Awareness • B25: Two-Chamber Data Fabric & Clean Wall
 • B29: PDPA Part 1: Consumer Rights Table      
 • B29b: PDPA Part 2: Governance Truth Table    [ DRAWER 6: CFO FINANCIAL MODEL & STRESS ]
 • B30: 18-Month Phased Rollout & Regulatory    • B33: 5-Year Operating Schedule (Basis A)
                                                • B33b: Itemized Cost Burdens & Sunk Offsets
                                                • B34: Assumptions Register & Benchmarks
                                                • B35: Zero-Churn Sensitivity Matrix (3x3)
                                                • B36: Valuation Bridge: Gross to Net EBITDA
```

---

# SECTION 1: FINISHED EVIDENCE SLIDES (B01–B05)
*(Preserved exactly as verified and built in your PowerPoint deck)*
* **B01:** Fatema (24, Dhaka) — Stalker protection, Section 16 & Section 2(17) PII mandate.
* **B02:** Kashem Bhai (48, Bogra) — Roadside kiosk economics, ৳1.80 margin, Section 17 & 21 liability.
* **B03:** Case Study: What Research Showed — ICTD 2020 (Haque et al.) exposed khata, bulk sales, female customer harassment.
* **B04:** Fahim (10 Years Old) — PDPA 2026 Act 63 Section 9 child consent, Definition 2(13) profiling ban.
* **B05:** Evidence Catalog: The Systemic Crisis — Pathao breach, BTRC 46% VAS probe, TIME kiosk harassment, CHI 2017 study.

---

# SECTION 2: THE MOAT & LEGAL HARMONIZATION (B08, B07, B12, B11, B11b, B14)

### SLIDE B08 · Supports Main Slide 3 & 4
**Headline:** **Why an app can't do this, and the network can.**

```
[TOP-LEFT TAG]: BACKUP B08 · supports Slide 3                                                [TOP-RIGHT]: ↩ Slide 3
===================================================================================================================
"Why an app can't do this, and the network can"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — ARCHITECTURAL CONTRAST: APP VS NETWORK]              [RIGHT 45% — THREE STACKED CARDS]

  APP-BASED PRIVACY (TRUECALLER / WHATSAPP)                      ┌──────────────────────────────────────────────────┐
  • Requires modern smartphone & 4G/5G data pack                 │ CARD 1 — FOR THE CUSTOMER                        │
  • Blind to 20M+ feature phones (45% of NTL base)               │ Universal reach: Zero install, zero internet     │
  • Contact scraping uploads entire address book                 │ required. Privacy protects 58.6M users on any    │
  • Unaware of core SS7/Diameter signaling                       │ handset from Day 1 via native USSD/SMS.          │
                 VS                                              └──────────────────────────────────────────────────┘
  NETWORK-LAYER UTILITY (NTL SHUROKKHA)                          ┌──────────────────────────────────────────────────┐
  • Native SS7, Diameter & IMS signaling core                    │ CARD 2 — FOR NTL                                 │
  • 100% reach across smartphones AND feature phones             │ Unreplicable moat: Third-party apps cannot touch │
  • Zero contact book scraping; zero data egress                 │ network signaling or OCS charging flows. NTL owns│
  • In-line policy enforcement at switch speed                   │ the subscriber edge and billing gate.            │
                                                                 └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ GSMA Open Gateway & Safaricom: Network-level     │
                                                                 │ SIM identity and USSD menus scale where app-only │
                                                                 │ privacy products fail due to handset divides.    │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Signaling Redirection: Core MSC/HLR proxy routes calls via virtual bridge without touching app layers.
• Precise Separation: Envoy L7 handles TLS/PII redaction; kernel eBPF/XDP enforces socket containment.
-------------------------------------------------------------------------------------------------------------------
Source: GSMA Mobile Economy Asia Pacific 2025; BTRC Telecom Subscription Statistics; Safaricom M-Pesa Case Study.
```

---

### SLIDE B07 · Supports Main Slide 8
**Headline:** **PDPA says erase. The telecom law says keep.**

```
[TOP-LEFT TAG]: BACKUP B07 · supports Slide 8                                                [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"PDPA says erase. The telecom law says keep"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — STATUTORY HARMONIZATION: THE CLEAN WALL]             [RIGHT 45% — THREE STACKED CARDS]

  STATUTORY CONFLICT                                             ┌──────────────────────────────────────────────────┐
  • PDPA 2026 Sec 13(2): Citizen Right of Erasure                │ CARD 1 — FOR THE CUSTOMER                        │
  • Telecom Act 2001 Sec 97: Mandatory 24-Mo CDR Retention       │ Commercial slate wiped clean: Marketing profiles │
                 │                                               │ and behavioral vectors purged in <24h; user lines│
  STATUTORY HARMONIZATION                                        │ are never commercially tracked after erasure.    │
  • PDPA Sec 13(3)(c): Statutory Obligation Override             └──────────────────────────────────────────────────┘
  • Supreme Court Doctrine: Lex Specialis Derogat Legi Generali  ┌──────────────────────────────────────────────────┐
                 │                                               │ CARD 2 — FOR NTL                                 │
  ARCHITECTURAL SEPARATION                                       │ Total regulatory shield: Air-gapped compliance   │
  • Commercial Lakehouse: Profiles wiped within 24 hours         │ vault preserves mandatory CDRs, satisfying BTRC  │
  • Air-Gapped Jashore Vault: CDRs mirrored via optical diode    │ without exposing NTL to PDPA Section 31 fines.   │
                                                                 └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ CJEU Tele2 Sverige & ETSI TS 102 232: Precedent  │
                                                                 │ establishes lawful coexistence between national  │
                                                                 │ security preservation and commercial erasure.    │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• PDPA Sec 13(3)(c) Exception: Statutory duty to preserve metadata legally overrides general commercial erasure requests.
• Identity Tombstoning: Commercial lakehouse purges profile; call records locked 24 months under High Court warrant.
-------------------------------------------------------------------------------------------------------------------
Source: Personal Data Protection Act 2026 (Sec 13(2), 13(3)(c), 24); Bangladesh Telecommunication Act 2001 (Sec 97).
```

---

### SLIDE B12 · Supports Main Slide 4 & 5
**Headline:** **Hidden from strangers, never from a court.**

```
[TOP-LEFT TAG]: BACKUP B12 · supports Slide 4                                                [TOP-RIGHT]: ↩ Slide 4
===================================================================================================================
"Hidden from strangers, never from a court"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — DIAGRAM CONCEPT: DUAL-KEY LAWFUL INTERCEPTION FLOW] [RIGHT 45% — THREE STACKED CARDS]

  HIGH COURT JUDICIAL WARRANT
                 │
  ┌──────────────┴──────────────┐
  │ DUAL-KEY ESCROW GATEWAY     │
  │ • Key 1: Chief Legal Officer│
  │ • Key 2: Statutory DPO      │
  └──────────────┬──────────────┘
                 │ Both Keys Required
  ┌──────────────▼──────────────┐                               ┌──────────────────────────────────────────────────┐
  │ AIR-GAPPED WORM VAULT       │                               │ CARD 1 — FOR THE CUSTOMER                        │
  │ Resolves: Alias -> Smart NID│                               │ Public shield, not crime haven: Identity masked  │
  └──────────────┬──────────────┘                               │ from delivery riders and shopkeepers, but        │
                 │ ETSI TS 102 232                              │ instantly verifiable for emergency services under│
  ┌──────────────┴──────────────┐                               │ High Court warrant.                              │
  ▼                             ▼                               └──────────────────────────────────────────────────┘
HI2: IRI METADATA             HI3: CONTENT STREAM               ┌──────────────────────────────────────────────────┐
(ASN.1 Signaling / Cell CGI)  (Encapsulated Call Payload)       │ CARD 2 — FOR NTL                                 │
  │                             │                               │ Dual-key judicial governance: Air-gapped WORM    │
  └──────────────┬──────────────┘                               │ vault unlocks strictly via joint CLO and DPO     │
                 ▼                                              │ authorization, satisfying PDPA Sec 24(1)(ক, খ)   │
  LAWFUL ENFORCEMENT MONITORING FACILITY (LEMF)                 │ exemptions.                                      │
  (Authorized State Agencies under High Court Warrant)          └──────────────────────────────────────────────────┘
                                                                ┌──────────────────────────────────────────────────┐
                                                                │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                │ Global ETSI standard: Built on ETSI TS 102 232   │
                                                                │ handover interfaces (HI1/HI2/HI3) and BTRC       │
                                                                │ statutory telecommunications interception rules. │
                                                                └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• PDPA Sec 24(1)(ক, খ) Exemption: Express statutory exemption from consent for national security and court orders.
• Shamir's Dual-Key Escrow: CLO hardware key (legality) + DPO hardware key (proportionality) unlocks WORM records.
• ETSI TS 102 232 Handover: Standardized HI1 (warrant), HI2 (ASN.1 IRI metadata), and HI3 (CC payload) interfaces.
-------------------------------------------------------------------------------------------------------------------
Source: Personal Data Protection Act 2026 (Act 63 of 2026 Sec 24); Telecom Act 2001 (Sec 97); ETSI TS 102 232-1/-7.
```

---

### SLIDE B11 · Supports Main Slide 4
**Headline:** **Top up and order without saying your number.**

```
[TOP-LEFT TAG]: BACKUP B11 · supports Slide 4                                                [TOP-RIGHT]: ↩ Slide 4
===================================================================================================================
"Top up and order without saying your number"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — 2-TRACK USER JOURNEY: STEALTH & BLIND FLEXILOAD]    [RIGHT 45% — THREE STACKED CARDS]

  TRACK 1: STEALTH NUMBER (PARCEL & LIVESTREAM)                  ┌──────────────────────────────────────────────────┐
  Dial *1218*2# ──> 24h Virtual Bridge Pool ──> Courier Calls   │ CARD 1 — FOR THE CUSTOMER                        │
  (Pool of 5,000 numbers handles millions; real SIM hidden)      │ Roadside & delivery privacy: Women and youth     │
                                                                 │ shop and recharge without exposing real 11-digit │
  TRACK 2: BLIND FLEXILOAD (THE NO-KHATA MANDATE)                │ numbers to strangers.                            │
  Dial *1218*3# ──> 6-Digit One-Time Code ──> Merchant Enters    └──────────────────────────────────────────────────┘
  (OCS charging core resolves in RAM; zero paper khata writing)  ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 2 — FOR NTL                                 │
  MERCHANT ADOPTION INCENTIVE                                    │ Channel incentive moat: 10-poisha merchant bonus │
  +10 Poisha / Token ──> 250,000 Kiosk Owners Back Privacy       │ turns 250,000 kiosk owners into active privacy   │
  (Replaces illegal paper ledgers with digital speed)            │ champions, driving adoption past 30% pilot gate. │
                                                                 └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Proven African & Indian precedents: Safaricom    │
                                                                 │ M-Pesa paper ledger ban (March 2026) and Vodafone│
                                                                 │ Sakhi private recharge tokens.                   │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Signaling Redirection: Ephemeral virtual bridge pool forwards calls at HLR switch; zero call audio or SMS storage.
• In-Memory Charging: 6-digit random token resolves in volatile OCS RAM with 5-minute TTL; wiped upon commit.
-------------------------------------------------------------------------------------------------------------------
Source: Safaricom M-Pesa Data Protection Audit 2026; Vodafone Sakhi Case Study; TBS Field Investigation. Modeled estimate.
```

---

### SLIDE B11b · Supports Main Slide 4
**Headline:** **Top up airtime without writing in paper ledgers.**

```
[TOP-LEFT TAG]: BACKUP B11b · supports Slide 4                                               [TOP-RIGHT]: ↩ Slide 4
===================================================================================================================
"Top up airtime without writing in paper ledgers"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — ROADSIDE EXPOSURE CONTEXT & FLOW]                    [RIGHT 45% — FIVE EXECUTION STEPS]

• Roadside Khata Harvesting: Millions recharge by shouting or     1. Token Request: Customer dials *123*72# at kiosk.
  writing numbers in unguarded paper khata books.                 2. Dynamic Generation: OCS returns random 6-digit code.
• Paper Log Vulnerability: Khata logs left on counters are        3. Spoken Token: Customer speaks only code (e.g. 849-201).
  harvested or resold in bulk for spam and harassment.            4. POS Submission: Retailer enters token into Flexiload SIM.
• Remote Family Top-Up: Static 8-digit reload alias allows remote 5. In-Memory Commit: OCS credits account in RAM;
  family top-ups without revealing phone numbers.                    token auto-expires upon commit.
• Carrier Core Solution: USSD protocol works on any handset.

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Volatile RAM Resolution: 6-digit token resolves in volatile OCS memory with 5-minute TTL; wiped instantly on commit.
• Remote Family Top-Up Support: Subscribers can generate a static, reload-only 8-digit alias PIN that only accepts airtime credits, never exposes the MSISDN.
-------------------------------------------------------------------------------------------------------------------
Source: ACM ICTD 2020 (Haque et al.); Safaricom M-Pesa Data Protection Audit 2026; Vodafone Sakhi Case Study.
```

---

### SLIDE B14 · Supports Main Slide 8
**Headline:** **Dialect-native voice AI for privacy consent.**

```
[TOP-LEFT TAG]: BACKUP B14 · supports Slide 8                                               [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"Dialect-native voice AI for privacy consent"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — 4 REGIONAL BANGLA DIALECT MODELS]                    [RIGHT 45% — THREE STACKED CARDS]

┌───────────────────────────┐ ┌───────────────────────────┐      ┌──────────────────────────────────────────────────┐
│ CHATTOGRAM: Chatgaya AI   │ │ SYLHET: Sylheti Dialect AI│      │ CARD 1 — FOR THE CITIZEN                         │
│ • Local phonemes & idioms │ │ • Remittance household    │      │ Zero literacy barrier: Rural and elderly users   │
│ • 94% comprehension in    │ │   consent verification    │      │ give genuine informed consent via spoken voice   │
│   rural Chattogram        │ │ • Expat remittance trust  │      │ in their own mother dialect without reading.     │
└───────────────────────────┘ └───────────────────────────┘      └──────────────────────────────────────────────────┘
┌───────────────────────────┐ ┌───────────────────────────┐      ┌──────────────────────────────────────────────────┐
│ NOAKHALI: Noakhailla AI   │ │ OLD DHAKA: Dhakaiya AI    │      │ CARD 2 — FOR NTL                                 │
│ • Phonetic contractions   │ │ • Wholesale trade phrasing│      │ Statutory consent validity: Satisfies Act 63     │
│ • Overcomes literacy      │ │ • Accelerates retail token│      │ Section 5 requirements for clear, informed,      │
│   barriers on keypad lines│ │   adoption in bazaars     │      │ and unambiguous subscriber agreement.            │
└───────────────────────────┘ └───────────────────────────┘      └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Sovereign on-premise ASR: Built on BUET Bangla   │
                                                                 │ Speech Corpus running on sovereign private nodes.│
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• On-Premise ASR Inference: Regional acoustic models run on sovereign NTL servers; zero cloud audio export.
• Statutory Consent Integrity: Satisfies Act 63 Section 5 requirement for clear, informed, and unambiguous consent.
-------------------------------------------------------------------------------------------------------------------
Source: Bangla Speech Corpus (BUET 2025); Act No. 63 of 2026 Section 5 (Conditions of Valid Consent).
```

---

# SECTION 3: CONSUMER PRIVACY & IDENTITY (B06, B16, B17)

### SLIDE B06 · Supports Main Slide 2 & 6
**Headline:** **A recycled number can hand a stranger his bank OTPs.**

```
[TOP-LEFT TAG]: BACKUP B06 · supports Slide 6                                                [TOP-RIGHT]: ↩ Slide 6
===================================================================================================================
"A recycled number can hand a stranger his bank OTPs"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: CLEAN RECYCLING TIMELINE]                             [RIGHT 45%: THREE STACKED CARDS]

+--------------------+      +--------------------+               ┌──────────────────────────────────────────────────┐
| 360-DAY DORMANCY   |      | HLR QUARANTINE     |               │ CARD 1 — FOR THE CUSTOMER                        │
| Inactive SIM hits  | ---> | 90-day buffer: all |               │ Ghost identity protection: Surrendered or        │
| BTRC 12-mo cutoff  |      | stale OTPs dropped |               │ dormant lines automatically sever previous bank  │
+--------------------+      +--------------------+               │ and bKash ties before reissue.                   │
          │                           │                          └──────────────────────────────────────────────────┘
          ▼                           ▼                          ┌──────────────────────────────────────────────────┐
+--------------------+      +--------------------+               │ CARD 2 — FOR NTL                                 │
| CAMARA UNBIND PUSH |      | CLEAN REISSUE      |               │ High-ARPU corporate trust: Carrier webhook push  │
| Webhook notifies   | ---> | New buyer gets zero|               │ notifies partner banks, eliminating SIM-swap     │
| banks & bKash cores|      | legacy ghost ties  |               │ fraud and safeguarding subscriber reputation.    │
+--------------------+      +--------------------+               └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Financial Express Letter (13 Oct 2026): Exposed  │
                                                                 │ recycled numbers receiving legacy bank OTPs under│
                                                                 │ standard BTRC 12-month recycling timelines.      │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Automated Webhook Dispatch: HLR triggers cryptographic event notification to registered bank endpoints upon recycling.
• Zero Banking Exposure: Eliminates account takeover fraud without requiring manual customer deregistration.
-------------------------------------------------------------------------------------------------------------------
Source: Financial Express Letter (13 Oct 2026); BTRC SIM Recycling Directives; GSMA Open Gateway Architecture.
```

---

### SLIDE B16 · Supports Main Slide 5
**Headline:** **One dial takes a child's line out of profiling.**

```
[TOP-LEFT TAG]: BACKUP B16 · supports Slide 5                                                [TOP-RIGHT]: ↩ Slide 5
===================================================================================================================
"One dial takes a child's line out of profiling"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: GUARDIAN SHIELD WORKFLOW]                             [RIGHT 45%: THREE STACKED CARDS]

+--------------------+      +--------------------+               ┌──────────────────────────────────────────────────┐
| *1218*4# DIALED    |      | GUARDIAN PIN ENTRY |               │ CARD 1 — FOR THE CUSTOMER                        │
| Parent initiates   | ---> | Adult consent      |               │ Instant child protection: Dialing *1218*4# lets  │
| USSD line shield   |      | verified (Sec 9)   |               │ parents shield shared family phones from         │
+--------------------+      +--------------------+               │ predatory ads, gaming drains, and tracking.      │
          │                           │                          └──────────────────────────────────────────────────┘
          ▼                           ▼                          ┌──────────────────────────────────────────────────┐
+--------------------+      +--------------------+               │ CARD 2 — FOR NTL                                 │
| BSS MINOR TAGGED   |      | GATEWAY SHIELD     |               │ Total PDPA Section 9 compliance: Eliminates      │
| MSISDN flagged:    | ---> | Ad trackers dropped|               │ statutory liability by replacing risky AI        │
| zero commercial ML |      | zero gaming charges|               │ behavioral profiling with verifiable consent.    │
+--------------------+      +--------------------+               └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ PDPA 2026 (Act 63, Sec 9 & 2(13)): Strictly      │
                                                                 │ prohibits unconsented minor profiling; UK Code   │
                                                                 │ proves zero-tracking network policies succeed.   │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Default Zero-Profiling: Commercial AI models never ingest line telemetry without verified opt-in.
• BSS Minor Tag: Deterministic network attribute overriding CRM marketing and churn algorithms.
• Gi-LAN DNS Filter: Gateway suppression of programmatic ad trackers and third-party VAS billing.
-------------------------------------------------------------------------------------------------------------------
Source: Personal Data Protection Act 2026 (Act No. 63 of 2026) Sec 9 & 2(13); UK ICO Age Appropriate Design Code.
```

---

### SLIDE B17 · Supports Main Slide 5
**Headline:** **Prove "over 18" without showing an ID.**

```
[TOP-LEFT TAG]: BACKUP B17 · supports Slide 5                                                [TOP-RIGHT]: ↩ Slide 5
===================================================================================================================
"Prove 'over 18' without showing an ID"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: SPLIT-ZK ARCHITECTURE]                                [RIGHT 45%: THREE STACKED CARDS]

+--------------------+      +--------------------+               ┌──────────────────────────────────────────────────┐
| SIM HANDSET        |      | NTL CORE HSM VAULT |               │ CARD 1 — FOR THE CITIZEN                         │
| Native SIM         | ---> | Central HSM proves |               │ Zero ID exposure: Bangladeshi youth verify adult │
| Milenage challenge |      | age >= 18 from DOB |               │ status on gaming and OTT apps without uploading  │
+--------------------+      +--------------------+               │ NID cards, birth certificates, or photos.        │
  (SIM proves line)          (Zero-Knowledge test)               └──────────────────────────────────────────────────┘
          │                           │                          ┌──────────────────────────────────────────────────┐
          ▼                           ▼                          │ CARD 2 — FOR NTL                                 │
+--------------------+      +--------------------+               │ Public-Good Trust Moat: Eliminates credential    │
| ZK-ASSERTION       |      | EXTERNAL APP       |               │ theft liability while keeping citizen personal   │
| Cryptographic      | ---> | Receives boolean   |               │ data strictly within sovereign carrier borders.  │
| proof generated    |      | "over_18: true"    |               └──────────────────────────────────────────────────┘
+--------------------+      +--------------------+               ┌──────────────────────────────────────────────────┐
                             (Zero PII exported)                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ GSMA Open Gateway: CAMARA age verification       │
                                                                 │ standard replaces risky document uploads across  │
                                                                 │ EU and Asian telecommunication alliances.        │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Split-ZK Architecture: SIM Milenage auth offloads heavy zero-knowledge cryptography to core Tier-IV HSMs.
• Boolean Assertion: External platforms receive only over_18: true; 2G USSD fallback operates without smartphone apps.
-------------------------------------------------------------------------------------------------------------------
Source: GSMA CAMARA Open Gateway API-002; W3C Verifiable Credentials 2.0; ISO/IEC 23264 Standards.
```

---

# SECTION 4: B2B FRAUD & FINTECH (B18, B19)

### SLIDE B18 · Supports Main Slide 6
**Headline:** **No third-party charge without your PIN.**

```
[TOP-LEFT TAG]: BACKUP B18 · supports Slide 6                                                [TOP-RIGHT]: ↩ Slide 6
===================================================================================================================
"No third-party charge without your PIN"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: AIRTIME VAULT & DEVELOPER ESCROW]                     [RIGHT 45%: THREE STACKED CARDS]

[Third-Party CP / WAP Script] ──► [Diameter Ro/Gy Request]       ┌──────────────────────────────────────────────────┐
                                                │                │ CARD 1 — FOR THE CUSTOMER                        │
                                    [Airtime Vault Deadbolt]     │ Balance never frozen for calls: Third-party      │
                                     (Requires *1218*1# PIN)     │ content charges are deadbolted until confirmed   │
                                     /                         \ │ by private USSD PIN. Zero silent deductions.     │
                          [PIN Entered]                    [No]  └──────────────────────────────────────────────────┘
                                │                                ┌──────────────────────────────────────────────────┐
                     [T+14 Developer Escrow]       [Blocked 5004]│ CARD 2 — FOR NTL                                 │
                                │                                │ 88% dispute drop deflects 8.98M annual complaint │
                     [Dispute Clawback Buffer]     [Zero Drain]  │ calls, capturing +BDT 35.56 Cr in net call center│
                                                                 │ operating cost savings.                          │
                                                                 └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Developer escrow funds refunds: 14-day rolling   │
                                                                 │ developer holdback claws back rogue charges      │
                                                                 │ without operator balance-sheet exposure.         │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Diameter Deadbolt: OCS rejects unauthenticated third-party debits with Error 5004.
• Escrow Clawback: T+14 developer revenue buffer automates instant customer restitution.
-------------------------------------------------------------------------------------------------------------------
Source: Daily Star Investigation (Dec 2020); BTRC VAS Directives; 3GPP TS 32.299 (Diameter OCS).
```

---

### SLIDE B19 · Supports Main Slide 6
**Headline:** **Banks ask one question and get one word.**

```
[TOP-LEFT TAG]: BACKUP B19 · supports Slide 6                                                [TOP-RIGHT]: ↩ Slide 6
===================================================================================================================
"Banks ask one question and get one word"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: GSMA CAMARA SIM-SWAP FLOW]                            [RIGHT 45%: THREE STACKED CARDS]

[Bank Core / bKash App] ──► (Fund Transfer Request: BDT 50,000)  ┌──────────────────────────────────────────────────┐
             │                                                   │ CARD 1 — FOR THE CUSTOMER                        │
             ▼                                                   │ Account takeover impossible: Fraudulent SIM      │
[POST /sim-swap/v0/check] ──► [NTL CAMARA API Gateway]           │ swaps cannot intercept bank OTPs or drain mobile │
                                          │                      │ financial wallets.                               │
                                 [HSS / UDM Core]                └──────────────────────────────────────────────────┘
                                 (Checks lastSwap)               ┌──────────────────────────────────────────────────┐
             ▲                            │                      │ CARD 2 — FOR NTL                                 │
             │                            ▼                      │ High-margin software monetization: 90M annual    │
[Returns: {"swapped": false}] ◄─── [Sub-45ms Boolean]            │ bank queries at BDT 1.50 generate +BDT 11.40 Cr  │
             │                                                   │ net high-margin revenue.                         │
             ▼                                                   └──────────────────────────────────────────────────┘
[Transfer Approved Instantly with Zero PII Shared]               ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Dialog Axiata live standard: Mirrors Sri Lanka   │
                                                                 │ LankaPay integration and GSMA Open Gateway       │
                                                                 │ commercial banking deployments.                  │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• CAMARA Standard: Sub-45ms query against HSS/UDM signaling via mTLS REST API.
• Zero-PII Boolean: Returns only true/false. No names, locations, or call records shared.
-------------------------------------------------------------------------------------------------------------------
Source: GSMA Open Gateway CAMARA Spec v0.3; Dialog Axiata-LankaPay API Case Study (2024); BTRC eKYC Directives.
```

---

# SECTION 5: SOVEREIGN AI & DATA FABRIC (B21, B22, B23, B24, B25)

### SLIDE B21 · Supports Main Slide 7
**Headline:** **Every byte mapped automatically; agents see masked screens.**

```
[TOP-LEFT TAG]: BACKUP B21 · supports Slide 7                                                [TOP-RIGHT]: ↩ Slide 7
===================================================================================================================
"Every byte mapped automatically; agents see masked screens"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — APACHE ATLAS & OPENLINEAGE DATA DISCOVERY]           [RIGHT 45% — ZERO-TRUST AGENT DESK ENFORCEMENT]

  ENTERPRISE LAKEHOUSE & BSS STACK                               ┌──────────────────────────────────────────────────┐
  • Hadoop, Spark, Kafka & Billing Engines                       │ CARD 1 — FOR THE CUSTOMER                        │
                 │                                               │ Zero insider snooping: Call center agents and    │
  OPENLINEAGE AUTOMATED CRAWL                                    │ retail staff see masked screens (018*******42);  │
  • Hooks capture schema mutations & table reads in real time    │ unlocking requires live 180s USSD/SMS OTP.       │
                 │                                               └──────────────────────────────────────────────────┘
  4-TIER PDPA SENSITIVITY TAGGING                                ┌──────────────────────────────────────────────────┐
  • Tier 1: Public                                               │ CARD 2 — FOR NTL                                 │
  • Tier 2: Internal                                             │ Dark data eradicated: Automatically maps 20 years│
  • Tier 3: Confidential PII (MSISDN, Balances)                  │ of fragmented Hadoop, billing, and BSS tables    │
  • Tier 4: Restricted CII (NID, Biometrics, Tower Locations)    │ into a live, queryable governance graph.         │
                 │                                               └──────────────────────────────────────────────────┘
  DYNAMIC ACCESS ENFORCEMENT                                     ┌──────────────────────────────────────────────────┐
  • Apache Ranger blocks unapproved app queries                  │ CARD 3 — PROOF OR PRECEDENT                      │
  • Zero-Trust Agent Desk masks screens: 018*******42            │ TM Forum & Apache Atlas Standard: Proven across  │
  • 180-second unmasking key released only upon customer OTP     │ Vodafone and Orange lakehouses to enforce real-  │
                                                                 │ time GDPR/PDPA data minimization at scale.       │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Dynamic Masking Engine: Apache Ranger policy intercepts SQL/REST queries; releases 180s ephemeral decryption key only on valid OTP.
• Non-Intrusive Lineage: OpenLineage metadata probes run asynchronously; zero latency impact on core billing transactions.
-------------------------------------------------------------------------------------------------------------------
Source: Apache Atlas & OpenLineage Telecom Reference Architecture; PDPA 2026 Sec 16 & 17; TM Forum Data Governance Guide.
```

---

### SLIDE B22 · Supports Main Slide 7
**Headline:** **The AI never sees who you are.**

```
[TOP-LEFT TAG]: BACKUP B22 · supports Slide 7                                                [TOP-RIGHT]: ↩ Slide 7
===================================================================================================================
"The AI never sees who you are"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: SOVEREIGN AI IN-LINE SANITIZATION GATEWAY]            [RIGHT 45%: THREE STACKED CARDS]

[Agent Prompt] ──> "Rebate for 01819-..." (Raw Text)             ┌──────────────────────────────────────────────────┐
                         │                                       │ CARD 1 — FOR THE CUSTOMER                        │
                         ▼                                       │ Complete identity masking: Names, phone numbers, │
┌─────────────────────────────────────────────────────────────┐  │ and locations are scrubbed locally before AI     │
│ 1. Injection Guard: Blocks jailbreaks & prompt attacks      │  │ models ever process a customer care query.       │
│ 2. Bilingual Sanitizer: Regex + Bangla NER scrubs PII       │  └──────────────────────────────────────────────────┘
│ 3. Ephemeral RAM Vault: Replaces PII with <USER_ID_91B>     │  ┌──────────────────────────────────────────────────┐
└────────────────────────┬────────────────────────────────────┘  │ CARD 2 — FOR NTL                                 │
                         │                                       │ Zero cross-border exposure: Enables secure GenAI │
                         ▼ Clean Prompt ("Rebate for <USER>")    │ adoption across customer care without violating  │
[Internal / Ext. LLM] ──> Inference with zero identity view      │ statutory sovereign data residency mandates.     │
                         │                                       └──────────────────────────────────────────────────┘
                         ▼ Clean Output ("Credit BDT 50")        ┌──────────────────────────────────────────────────┐
[Bilingual Action Card]<── Detokenized locally & delivered       │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Enterprise gateway standard: Defends against     │
                                                                 │ OWASP LLM Top 10 risks, preventing real-world    │
                                                                 │ prompt leaks seen in global technology firms.    │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• WASI PII Redactor: In-memory regex and bilingual NER scrubbing MSISDNs in <28ms.
• Prompt Injection Barrier: Heuristic classifier stopping jailbreak inputs.
• Explainable Action Cards: Bilingual plain-language automated decisions rendered in Bangla and English.
-------------------------------------------------------------------------------------------------------------------
Source: OWASP Top 10 for LLMs (2025); Samsung Enterprise Data Leak Precedents (2023); PDPA 2026.
```

---

### SLIDE B23 · Supports Main Slide 7 & 8
**Headline:** **Stopping AI-powered attackers and model inversion.**

```
[TOP-LEFT TAG]: BACKUP B23 · supports Slide 7 & 8                                            [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"Stopping AI-powered attackers and model inversion"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — 4-LAYER OFFENSIVE AI DEFENSE MATRIX]                 [RIGHT 45% — THREE STACKED CARDS]

┌──────────────────────────────────────────────────────────┐     ┌──────────────────────────────────────────────────┐
│ THREAT 1: Deepfake eKYC Presentation Attacks             │     │ CARD 1 — FOR THE CUSTOMER                        │
│ • Synthetic video & facial clones bypassing onboarding   │     │ Deepfake-proof identity: Biometric liveness and  │
│ • Control: 3D Liveness & PAD Enclave (ISO 30107-3) in RAM│     │ SIM hardware checks stop AI voice/face clones    │
└──────────────────────────────────────────────────────────┘     │ from hijacking your account or eKYC.             │
┌──────────────────────────────────────────────────────────┐     └──────────────────────────────────────────────────┘
│ THREAT 2: Model Inversion Training Extraction            │     ┌──────────────────────────────────────────────────┐
│ • Adversaries query APIs to reconstruct training records │     │ CARD 2 — FOR NTL                                 │
│ • Control: Differential Privacy (ε ≤ 0.5) Laplacian noise│     │ Models cannot leak training data: Differential   │
└──────────────────────────────────────────────────────────┘     │ privacy and logit rounding make reconstructing   │
┌──────────────────────────────────────────────────────────┐     │ subscriber records mathematically impossible.    │
│ THREAT 3: Polymorphic & Adaptive AI Malware              │     └──────────────────────────────────────────────────┘
│ • Code mutating dynamically to evade static antivirus    │     ┌──────────────────────────────────────────────────┐
│ • Control: Behavioral eBPF XDR Core syscall containment  │     │ CARD 3 — PROOF OR PRECEDENT                      │
└──────────────────────────────────────────────────────────┘     │ NIST AI RMF & ISO 30107-3: Aligns with global    │
┌──────────────────────────────────────────────────────────┐     │ biometric Presentation Attack Detection (PAD)    │
│ THREAT 4: Automated AI Phishing & Smishing               │     │ and OWASP ML Security Top 10 standards.          │
│ • Mass automated vishing/smishing spoofing carrier headers│     └──────────────────────────────────────────────────┘
│ • Control: Core SMSC/CLI AI Firewall (<2ms inspection)   │
└──────────────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Model Inversion Defense: Gradient clipping (ε ≤ 0.5) and output confidence rounding block training data reconstruction.
• Presentation Attack Detection (PAD): ISO/IEC 30107-3 liveness detection rejects synthetic deepfake frames in RAM.
• Kernel eBPF Containment: Blocks polymorphic malware lateral movement by enforcing immutable container syscall allow-lists.
-------------------------------------------------------------------------------------------------------------------
Source: NIST AI Risk Management Framework (AI RMF 1.0); OWASP ML Top 10; ISO/IEC 30107-3 Biometric PAD Standard.
```

---

### SLIDE B24 · Supports Main Slide 8
**Headline:** **Each AI has a risk, a control and an owner.**

```
[TOP-LEFT TAG]: BACKUP B24 · supports Slide 8                                                [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"Each AI has a risk, a control and an owner"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: 6-SYSTEM ENTERPRISE AI INVENTORY TABLE]               [RIGHT 45%: THREE STACKED CARDS]

SYSTEM                 | RISK & TECHNICAL CONTROL    | OWNER     ┌──────────────────────────────────────────────────┐
-----------------------|-----------------------------|---------- │ CARD 1 — FOR THE CUSTOMER                        │
1. Customer Care AI    | Hallucinations / Gateway    | CMO / CCO │ Protected from black boxes: Safeguards prevent   │
2. Fraud Detection     | False Blocks / Human Review | CFO / Risk│ predatory AI upselling, eliminate child          │
3. Churn Prediction    | Bias / No Geolocation Feats | CMO / CCO │ profiling, and guarantee human appeal rights.    │
4. Marketing Engine    | Minor Profiling / Suppress  | CMO / VAS │└──────────────────────────────────────────────────┘
5. RAN Optimization    | Tracking / Regional Hubs    | CTO / Net │┌──────────────────────────────────────────────────┐
6. eKYC Processing     | Deepfakes / 3D PAD Enclave  | CIO / CLO │ CARD 2 — FOR NTL                                 │
                                                                 │ Total operational accountability: Clear C-suite  │
                                                                 │ ownership and automated CI/CD deployment gates   │
                                                                 │ eliminate rogue unvetted algorithms.             │
                                                                 └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Global governance standard: Adopts Singapore     │
                                                                 │ IMDA and EU AI Act principles, providing         │
                                                                 │ verifiable proof for statutory PDPA audits.      │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• ARIA CI/CD Risk Gate: Pipeline blocking unverified or biased models prior to production deployment.
• Board-Empowered DPO: Statutory officer with binding negative clearance over high-risk processing.
• Ephemeral Feature Store: Pseudonymized vectors preventing individual subscriber movement tracking.
-------------------------------------------------------------------------------------------------------------------
Source: Act No. 63 of 2026 (PDPA); Singapore IMDA AI Governance; EU AI Act (2024); ISO 30107-3.
```

---

### SLIDE B25 · Supports Main Slide 8
**Headline:** **Erase the profile. Keep the signal. Never mix them.**

```
[TOP-LEFT TAG]: BACKUP B25 · supports Slide 8                                                [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"Erase the profile. Keep the signal. Never mix them"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: TWO-CHAMBER SEPARATION & CRYPTO-SHREDDING]            [RIGHT 45%: THREE STACKED CARDS]

Core Signaling Switch (MSC / HSS) ──> CDRs & Signaling           ┌──────────────────────────────────────────────────┐
                │                                                │ CARD 1 — FOR THE CUSTOMER                        │
 ┌──────────────┴──────────────┐                                 │ Total digital erasure: When you request deletion │
 │ OPTICAL DATA DIODE (Simplex)│                                 │ via *1218*6#, marketing profiles, ad tags, and   │
 └──────────────┬──────────────┘                                 │ behavioral scores disappear within 24 hours.     │
 Photon Beam Leg A (TX) │      │ Leg B (One-Way Hash)            └──────────────────────────────────────────────────┘
                        ▼      ▼                                 ┌──────────────────────────────────────────────────┐
 ┌───────────────────────────────┐  ┌──────────────────────┐     │ CARD 2 — FOR NTL                                 │
 │ CHAMBER B: COMPLIANCE VAULT   │  │ CHAMBER A: COMMERCIAL│     │ Backups shredded instantly: Destroying the HSM   │
 │ • Law: Telecom Act Sec 97     │  │ • Law: PDPA Sec 13/14│     │ customer key renders petabytes of historical DR  │
 │ • Air-gapped WORM storage     │  │ • Marketing profiles │     │ backup tapes unreadable, satisfying Section 14(6)│
 │ • 24-month statutory hold     │  │ • Purged in <24h     │     └──────────────────────────────────────────────────┘
 └───────────────────────────────┘  └──────────────────────┘     ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ NIST SP 800-88 & French CNIL: Recognized standard│
                                                                 │ proving cryptographic erasure satisfies statutory│
                                                                 │ right of erasure across immutable backup media.  │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Simplex Optical Diode: Physical unidirectional glass fiber guarantees zero data can flow back from Chamber B to A.
• Cryptographic Key Shredding: Deleting per-subscriber AES-256 keys in central HSM renders tape backups instantly unreadable.
• Lex Specialis Derogat Legi Generali: Telecom retention law governs signaling; privacy law governs commercial analytics.
-------------------------------------------------------------------------------------------------------------------
Source: NIST SP 800-88 Rev. 1; Bangladesh Telecom Act 2001 Sec 97; PDPA 2026 Sec 13(2) & 14(6).
```

---

# SECTION 6: ENTERPRISE GOVERNANCE, VENDORS & ROADMAP (B26, B27, B28, B29, B29b, B30)

### SLIDE B26 · Supports Main Slide 8 & 9
**Headline:** **One named owner for every privacy decision.**

```
[TOP-LEFT TAG]: BACKUP B26 · supports Slide 8 & 9                                            [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"One named owner for every privacy decision"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: 3-TIER GOVERNANCE & RACI HIERARCHY]                   [RIGHT 45%: THREE STACKED CARDS]

┌─────────────────────────────────────────────────────────────┐  ┌──────────────────────────────────────────────────┐
│ TIER 3: BOARD AUDIT COMMITTEE (Binding Adjudication)        │  │ CARD 1 — FOR THE CUSTOMER                        │
│ • Direct statutory reporting line under PDPA Section 23     │  │ Uncompromising standards: Commercial marketing   │
│ • Board cannot override CDO on unambiguous statutory bans   │  │ quotas never override fundamental citizen data   │
└──────────────────────────────┬──────────────────────────────┘  │ rights or legal safeguards.                      │
                               │ Escalation                      └──────────────────────────────────────────────────┘
┌──────────────────────────────▼──────────────────────────────┐  ┌──────────────────────────────────────────────────┐
│ TIER 2: EXCO PRIVACY ARBITRATION GATE (5-Day SLA)           │  │ CARD 2 — FOR NTL                                 │
│ • CEO, CDO, CMO, CTO, CLO arbitration                       │  │ Zero executive liability: Structured 3-tier RACI │
│ • CDO holds binding Statutory Interim Veto on unsafe code   │  │ matrix and formal sign-offs shield corporate     │
└──────────────────────────────┬──────────────────────────────┘  │ officers from Section 32 vicarious penalties.    │
                               │ Gating                          └──────────────────────────────────────────────────┘
┌──────────────────────────────▼──────────────────────────────┐  ┌──────────────────────────────────────────────────┐
│ TIER 1: WORKING-LEVEL PRIVACY REVIEW BOARD (48-Hour SLA)    │  │ CARD 3 — PROOF OR PRECEDENT                      │
│ • Automated CI/CD Risk Gate (ARIA) & 45 Privacy Champions   │  │ Global telco governance: Modeled on Vodafone     │
│ • Fast 48h turnaround ensures privacy never stalls business │  │ Group and Singtel privacy charters with direct   │
└─────────────────────────────────────────────────────────────┘  │ board-level statutory reporting lines.           │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Statutory Veto: CDO holds formal authority to freeze non-compliant commercial releases under Board Charter.
• 48-Hour SLA: Prevents compliance bottlenecks by enforcing strict timelines on Privacy Impact Assessments.
• FIPS 140-3 HSM Gate: Production deployments require CDO cryptographic key signature to unmask pipeline containers.
-------------------------------------------------------------------------------------------------------------------
Source: Personal Data Protection Act 2026 (Act 63 of 2026 Sec 23 & 32); Vodafone Group Privacy Policy; Singtel EPLM.
```

---

### SLIDE B27 · Supports Main Slide 7 & 9
**Headline:** **Vendors get tokens, sandboxes and contracts.**

```
[TOP-LEFT TAG]: BACKUP B27 · supports Slide 7 & 9                                            [TOP-RIGHT]: ↩ Slide 7
===================================================================================================================
"Vendors get tokens, sandboxes and contracts"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: PARTNER SANDBOX & TOKEN MEDIATION]                    [RIGHT 45%: THREE STACKED CARDS]

┌───────────────────────────────────────┐                        ┌──────────────────────────────────────────────────┐
│     EXTERNAL PARTNER / BDAPPS APP     │                        │ CARD 1 — FOR THE CUSTOMER                        │
│   (50,000 Third-Party Developers)     │                        │ Zero identity exposure: Third-party apps and     │
└──────────────────┬────────────────────┘                        │ delivery services never see your true phone      │
                   │ API Call via HTTPS                          │ number or personal records.                      │
┌──────────────────▼────────────────────┐                        └──────────────────────────────────────────────────┘
│       EGRESS MEDIATION PROXY          │                        ┌──────────────────────────────────────────────────┐
│   (Rate Limiter & Circuit Breaker)    │                        │ CARD 2 — FOR NTL                                 │
└──────────────────┬────────────────────┘                        │ Ecosystem security: 50,000 partner apps run      │
                   │ Strips Raw MSISDN                           │ inside isolated sandboxes with automated egress  │
┌──────────────────▼────────────────────┐                        │ rate limits and instant kill-switches.           │
│   EPHEMERAL TOKEN + WASI SANDBOX      │                        └──────────────────────────────────────────────────┘
│ (15m Scoped Token / Zero Disk Access) │                        ┌──────────────────────────────────────────────────┐
└──────────────────┬────────────────────┘                        │ CARD 3 — PROOF OR PRECEDENT                      │
                   │ Contractual Enforcement                     │ Contractual shield: Enforces zero-storage SLAs,  │
┌──────────────────▼────────────────────┐                        │ 5x liquidated damages, and GSMA CAMARA tokenized │
│   ZERO-RETENTION LEGAL COVENANT       │                        │ partner standards.                               │
│   (Mandatory 5x Liquidated Damage)    │                        └──────────────────────────────────────────────────┘
└───────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Ephemeral Scoped Tokens: Opaque 15-minute identifiers replacing true MSISDNs.
• WASI Sandboxing: Memory-isolated WebAssembly runtime preventing partner disk or adjacent container access.
• DPA Liquidated Damages: Contractual 5x billing penalty indemnifying NTL against partner data leakage.
-------------------------------------------------------------------------------------------------------------------
Source: PDPA 2026 (Act 63 of 2026) Sections 8 & 17; GSMA Open Gateway Partner Architecture; Bdapps Governance.
```

---

### SLIDE B28 · Supports Main Slide 7 & 9
**Headline:** **Protecting employee data, shadow AI & awareness engine.**

```
[TOP-LEFT TAG]: BACKUP B28 · supports Slide 7 & 9                                            [TOP-RIGHT]: ↩ Slide 9
===================================================================================================================
"Protecting employee data, shadow AI & awareness engine"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — 3-PILLAR INTERNAL & EXTERNAL AWARENESS ENGINE]       [RIGHT 45% — THREE STACKED CARDS]

┌──────────────────────────────────────────────────────────┐     ┌──────────────────────────────────────────────────┐
│ 1. EMPLOYEE DATA & SHADOW AI CONTAINMENT                 │     │ CARD 1 — FOR EMPLOYEES & CUSTOMERS               │
│ • HR Lakehouse Isolation: Zero-Trust RBAC isolates staff │     │ Transparent, jargon-free trust: Bilingual privacy│
│   payroll and biometrics from commercial analytics.      │     │ nutrition labels, annual *1218# check-ups, and   │
│ • Sanitized Internal GenAI: Staff use NTL WASI gateway,  │     │ protected employee HR records keep everyone safe.│
│   blocking code/PII leaks to public external LLMs.       │     └──────────────────────────────────────────────────┘
└────────────────────────────┬─────────────────────────────┘     ┌──────────────────────────────────────────────────┐
                             ▼                                   │ CARD 2 — FOR NTL                                 │
┌──────────────────────────────────────────────────────────┐     │ Eliminates human-layer breaches: 45 embedded     │
│ 2. ROLE-BASED EMPLOYEE DRILLS (45 PRIVACY CHAMPIONS)     │     │ Privacy Champions and role-based drills prevent  │
│ • Engineers: Prompt-injection & CI/CD ARIA gate testing. │     │ insider leakage and social engineering traps.    │
│ • Care & Retail: OTP social-engineering & swap drills.   │     └──────────────────────────────────────────────────┘
└────────────────────────────┬─────────────────────────────┘     ┌──────────────────────────────────────────────────┐
                             ▼                                   │ CARD 3 — PROOF OR PRECEDENT                      │
┌──────────────────────────────────────────────────────────┐     │ Samsung Shadow-AI Precedent & ISO 27701: Prevents│
│ 3. CUSTOMER TRUST & SCALE AWARENESS (58.6M SUBSCRIBERS)  │     │ staff public-LLM data leaks while operationalizing│
│ • App "Privacy Nutrition Labels": Plain visual notices.  │     │ statutory employee notice & awareness duties.    │
│ • Annual *1218# Check-Up & 4-Dialect Scam Broadcasts.    │     └──────────────────────────────────────────────────┘
└──────────────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• HR Vault Segregation: Employee records encrypted under separate HSM keys; care agents require customer OTP to unmask screens.
• Shadow AI DLP Block: Outbound corporate proxy intercepts and blocks unmediated uploads to public commercial GenAI domains.
-------------------------------------------------------------------------------------------------------------------
Source: PDPA 2026 Statutory Notice & Security Mandates; ISO/IEC 27701; Samsung GenAI Governance Precedent (2023).
```

---

### SLIDE B29 · Supports Main Slide 8 & 10
**Headline:** **Every PDPA duty has an owner and a proof.**

```
[TOP-LEFT TAG]: BACKUP B29 · supports Slide 8 & 10                                           [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"Every PDPA duty has an owner and a proof"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: ACT 63 STATUTORY COMPLIANCE TRUTH TABLE]              [RIGHT 45%: THREE STACKED CARDS]

SECTION    | STATUTORY MANDATE        | TECHNICAL SHIELD         ┌──────────────────────────────────────────────────┐
-----------|--------------------------|------------------------- │ CARD 1 — FOR THE CUSTOMER                        │
Sec 9      | Child Consent & Rights   | Child-Shield USSD        │ Universal legal protection: Every statutory      │
Sec 13(2)  | Citizen Right to Erasure | Clean Slate (*1218*6#)   │ guarantee—erasure, child safety, confidentiality—│
Sec 14(6)  | Backup & DR Key Erasure  | Crypto Key Shredding     │ operates natively across all handsets via core.  │
Sec 16     | Purpose Confidentiality  | Tokenized Proxy          │└──────────────────────────────────────────────────┘
Sec 17     | Security & Encryption    | AES-256 / FIPS HSM       │┌──────────────────────────────────────────────────┐
Sec 21     | Independent Data Audit   | OPA Policy Logs          │ CARD 2 — FOR NTL                                 │
Sec 23     | Statutory CDO Governance | Binding DPO Release Veto │ Total audit defensibility: Pre-compiled statutory│
Sec 24     | Lawful Interception      | Clean Wall Diode         │ compliance packs deflect 5% global turnover fines│
Sec 29     | Sovereign Data Transfer  | eBPF Egress Drop         │ under Section 31.                                │
                                                                 └──────────────────────────────────────────────────┘
                                                                 ┌──────────────────────────────────────────────────┐
                                                                 │ CARD 3 — PROOF OR PRECEDENT                      │
                                                                 │ Statutory alignment: Directly operationalizes    │
                                                                 │ Bangladesh Act No. 63 of 2026 across nine        │
                                                                 │ discrete corporate and consumer duties.          │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Section Truth Table: Precise mapping of statutory provisions to technical microservices.
• Cryptographic Erasure: Wiping backup encryption keys guarantees compliance with Section 14(6).
• Automated Evidence Packs: Immutable WORM logs generated for National Data Authority inspection.
-------------------------------------------------------------------------------------------------------------------
Source: Personal Data Protection Act 2026 (Act No. 63 of 2026), Sections 9, 13, 14, 16, 17, 21, 23, 24, 29, 31.
```

---

### SLIDE B29b · Supports Main Slide 8 & 10
**Headline:** **Statutory section truth table: enterprise governance.**

```
[TOP-LEFT TAG]: BACKUP B29b · supports Slide 8 & 10                                          [TOP-RIGHT]: ↩ Slide 8
===================================================================================================================
"Statutory section truth table: enterprise governance"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — 6-BOX GOVERNANCE TRUTH GRID]                         [RIGHT 45% — AUDIT EVIDENCE SPECIFICATIONS]

• SEC 17: SECURITY OBLIGATIONS                                   1. FIPS 140-3 Hardware Key Attestation
  Hardware Root-of-Trust (UICC NIST P-256 ECDSA) & AES-256.        Annual third-party CREST penetration testing proof.
• SEC 21: INDEPENDENT DATA AUDIT                                 2. Immutable WORM Compliance Dossier
  OPA policy engine compiling continuous audit trails.             Ready for National Data Authority inspection.
• SEC 23: STATUTORY CDO / DPO                                    3. Board Audit Committee Charter
  Board-reporting CDO holding binding release veto.                Formal RACI logs and cryptographic CI/CD key.
• SEC 24: LAWFUL ACCESS EXEMPTION                                4. High Court Judicial Warrant Registry
  Clean Wall optical diode and dual-key unmasking escrow.          Dual-key authorization log (CLO + DPO).
• SEC 29: SOVEREIGN DATA RESIDENCY                               5. Kernel eBPF Packet Drop Logs
  eBPF packet filters blocking unapproved overseas egress.         CIDR network boundary enforcement records.

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Corporate Liability Defense: Systematic fulfillment of statutory obligations eliminates Section 31 global turnover fines.
• Statutory Independence: CDO reports directly to the Board Audit Committee independent of commercial business unit quotas.
-------------------------------------------------------------------------------------------------------------------
Source: Personal Data Protection Act 2026 (Act No. 63 of 2026), Sections 17, 21, 23, 24, 29 & 31.
```

---

### SLIDE B30 · Supports Main Slide 9 & 11
**Headline:** **18-month phased rollout & regulatory runway.**

```
[TOP-LEFT TAG]: BACKUP B30 · supports Slide 9 & 11                                           [TOP-RIGHT]: ↩ Slide 11
===================================================================================================================
"18-month phased rollout & regulatory runway"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — 3-PHASE IMPLEMENTATION TIMELINE]                     [RIGHT 45% — THREE STACKED CARDS]

┌──────────────────────────────────────────────────────────┐     ┌──────────────────────────────────────────────────┐
│ PHASE 1: FOUNDATION & TRIAGE (M1–6) · BDT 17.8 Cr CapEx  │     │ CARD 1 — FOR THE BOARD (CAPEX PROTECTION)        │
│ • Appoint Statutory CDO/DPO & 45 BU Privacy Champions    │     │ Stage-gated capital discipline: Phase 2 CapEx    │
│ • Deploy Apache Atlas lineage & Envoy/eBPF egress drops  │     │ (BDT 11.8 Cr) is locked until the 25,000-kiosk   │
│ • Launch *1218# Consent, Child-Shield & Airtime Vault    │     │ pilot hits ≥60% adoption and ≥30% dispute drop.  │
└────────────────────────────┬─────────────────────────────┘     └──────────────────────────────────────────────────┘
                             ▼ [25,000-Kiosk Pilot Gate]         ┌──────────────────────────────────────────────────┐
┌──────────────────────────────────────────────────────────┐     │ CARD 2 — FOR REGULATORS (PDPA TRANSITION)        │
│ PHASE 2: CORE & AI CONTAINMENT (M7–12) · BDT 11.8 Cr     │     │ Co-regulatory sandbox leadership: While PDPA     │
│ • Activate Sovereign AI Gateway & ARIA CI/CD Gates       │     │ subsidiary committees form during 18-mo runway,  │
│ • Commission Jashore Clean Wall Optical Diode & HSM Shred│     │ NTL establishes the national telecommunications  │
│ • Scale Blind Flexiload across 25,000 retail kiosks      │     │ data protection standard.                        │
└────────────────────────────┬─────────────────────────────┘     └──────────────────────────────────────────────────┘
                             ▼                                   ┌──────────────────────────────────────────────────┐
┌──────────────────────────────────────────────────────────┐     │ CARD 3 — FOR OPERATIONS (ZERO DISRUPTION)        │
│ PHASE 3: B2B MONETIZATION & AUDIT (M13–18) · 0 CapEx     │     │ Sunk VMware Telco Cloud reuse: Deploys on        │
│ • Commercialize GSMA CAMARA Bank SIM-Swap & Age APIs     │     │ existing vSAN nodes in Dhaka and Jashore,        │
│ • Activate 1-Click WORM Audit Packs before penalty date  │     │ avoiding BDT 65 Cr in greenfield hardware delays.│
└──────────────────────────────────────────────────────────┘     └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Co-Regulatory Sandbox Leadership: Proactive working group with BTRC bridges compliance while PDPA subsidiary rules form.
• 72-Hour Breach SLA: Automated incident containment protocol revokes partner tokens in <60s; complies with Sec 17 drills.
-------------------------------------------------------------------------------------------------------------------
Source: PDPA 2026 Sec 1(3) Transition Runway; NTL Program Management Office Charter; GSMA Open Gateway Rollout Guide.
```

---

# SECTION 7: CFO FINANCIAL AUDIT & MODEL (B33, B33b, B34)

### SLIDE B33 · Supports Main Slide 11
**Headline:** **Five years, every audited cost shown.**

```
[TOP-LEFT TAG]: BACKUP B33 · supports Slide 11                                           [TOP-RIGHT]: ↩ Slide 11
===================================================================================================================
"Five years, every audited cost shown"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: 5-YEAR CASH SCHEDULE TABLE (BASIS A)]                 [RIGHT 45%: THREE STACKED CARDS]

Financial Metric (BDT Cr)   | Y1      | Y2      | Y3      | Y4      | Y5      | 5-Yr Total
----------------------------|---------|---------|---------|---------|---------|-----------
Gross Value Inflow          | +26.6   | +48.2   | +64.0   | +71.2   | +78.4   | +288.4
Platform OpEx (40 FTEs)     | -15.4   | -18.2   | -20.2   | -20.8   | -21.4   | -96.0
Forgone VAS & Refund Buffer | -5.8    | -8.1    | -8.3    | -8.5    | -8.8    | -39.5
Retailer Kiosk Incentive    | 0.0     | -3.5    | -4.9    | -5.3    | -5.4    | -19.1
Net Accretive EBITDA        | +5.4    | +18.4   | +30.6   | +36.6   | +42.8   | +133.8
Program Capital Outlay      | -17.8   | -11.8   | 0.0     | 0.0     | 0.0     | -29.6
----------------------------|---------|---------|---------|---------|---------|-----------
Cumulative Net Cash Flow    | -12.4   | -5.8    | +24.8   | +61.4   | +104.2  | +104.2

[RIGHT 45%: THREE STACKED CARDS]
• Capital Recovery: 26.3-month cumulative cash payback; recovers BDT 29.6 Cr phased CapEx out of recurring cash.
• Cost Transparency: BDT 33.4 Cr annual burden fully funds 40 FTEs, refunds, and kiosk bonuses.
• Cash Generation: Cumulative net cash reaches positive BDT 104.2 Cr by Year 5 with an audited 68% ROIC.

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Sunk VCF Cloud Reuse: Avoids BDT 65 Cr greenfield CapEx by leveraging existing VMware Telco Cloud nodes.
• OpEx Loading: 100% of internal engineering labor expensed immediately in period incurred.
• Pilot Gate: Phase 2 CapEx (BDT 11.8 Cr) locked until 25,000-kiosk validation.
-------------------------------------------------------------------------------------------------------------------
Source: NTL Commercial Finance Model; GSMA Telecom Benchmarks; BASIS 2025 Tech Engineering Indices. Modeled estimate.
```

---

### SLIDE B33b · Supports Main Slide 11
**Headline:** **Itemized annual burdens & sunk capital offsets.**

```
[TOP-LEFT TAG]: BACKUP B33b · supports Slide 11                                          [TOP-RIGHT]: ↩ Slide 11
===================================================================================================================
"Itemized annual burdens & sunk capital offsets"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55% — AUDITED ANNUAL BURDENS (BASIS A)]                    [RIGHT 45% — CAPITAL EFFICIENCY & AVOIDED ASSETS]

  ANNUAL OPERATIONAL COSTS: −BDT 33.4 CR / YR                    ┌──────────────────────────────────────────────────┐
  • Platform OpEx (−20.3 Cr): Fully burdened headcount           │ >BDT 65.0 CR SUNK CAPITAL AVOIDANCE              │
    for 40 senior software, security & compliance FTEs.          │ • Sunk Cloud Assets: Reuses NTL VMware VCF       │
  • Forgone Rogue VAS (−5.9 Cr): Ceased unconsented               │   private cluster; zero greenfield servers.      │
    auto-renewals to restore consumer balance trust.             │ • Tier-IV Sovereign Nodes: Hosted in existing    │
  • Customer Refund Buffer (−2.4 Cr): 14-day rolling             │   Jashore and Dhaka secure facilities.           │
    escrow buffer automating dispute settlements.                │ • Phased Outlay: CapEx BDT 29.6 Cr phased        │
  • Retailer Adoption Bonus (−4.8 Cr): 10 poisha per token       │   (Y1 17.8 Cr; Y2 11.8 Cr locked to pilot gate). │
    paid to kiosk merchants driving 30% street adoption.         │ • High Cash Return: 26.3-month payback yielding  │
                                                                 │   +BDT 104.2 Cr 5-year cumulative cash flow.     │
                                                                 └──────────────────────────────────────────────────┘

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Headcount Rigor: 40 engineering FTEs expensed in period incurred under BASIS 2025 Dhaka tech compensation benchmarks.
• Governance Guardrail: Phase 2 CapEx release requires formal CDO sign-off and 25,000 active kiosk merchant validation.
-------------------------------------------------------------------------------------------------------------------
Source: BASIS Bangladesh IT Salary Survey 2025; Gartner Data Center Infrastructure Studies; NTL Fixed Asset Register.
```

---

### SLIDE B34 · Supports Main Slide 11
**Headline:** **Every number has an input and a source.**

```
[TOP-LEFT TAG]: BACKUP B34 · supports Slide 11                                           [TOP-RIGHT]: ↩ Slide 11
===================================================================================================================
"Every number has an input and a source"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: STRUCTURED ASSUMPTIONS REGISTER TABLE]               [RIGHT 45%: THREE STACKED CARDS]

Operating Metric        | Input Value     | External Source / Benchmark
------------------------|-----------------|-----------------------------------
Bank CAMARA API Inflow  | 90M pings @ 1.50| GSMA Open Gateway (+11.4 Cr at 85% margin)
Relative Churn Save     | 15.3% save      | Retains ~32,200 accounts (+17.0 Cr)
Dispute Call Deflection | 88% of 8.98M    | BTRC 2024 Audit; Gartner (+35.6 Cr)
Contact Center Cost     | BDT 45 per call | Call center labor index (Dhaka)
Elite Subscriber ARPU   | BDT 800 / month | NTL High-Value Subscriber base
Baseline Churn Rate     | 17.5% per annum | GSMA Intelligence South Asia
Platform Engineering    | 40 FTE personnel| BASIS 2025 Senior Engineering Index

[RIGHT 45%: THREE STACKED CARDS]
• Banking Standard: 90M queries priced at BDT 1.50 benchmarked against GSMA Open Gateway and commercial Dialog fraud APIs.
• Dispute Economics: Deflecting 88% of unauthorized billing calls saves BDT 45 per handled call, certified by BTRC logs.
• Subscriber Realism: Churn defense models a 15.3% relative retention save (+17.0 Cr) across 1.2M elite subscribers at 55% margin.

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• CAMARA Parity: BDT 1.50 matches regional $0.013 API pricing in Sri Lanka and India.
• Call Center Labor: Fully loaded Tier-1 operator hourly wage benchmark in Dhaka.
• HVS Base: Top 2% subscriber cohort generating 14% of NTL total gross service revenues.
-------------------------------------------------------------------------------------------------------------------
Source: GSMA Open Gateway Registry (2025); BTRC Consumer Affairs Annual Report; Gartner Contact Center Research; BASIS.
```

---

# SECTION 8: STRESS TESTS & DEFENSE (B35, B36)

### SLIDE B35 · Supports Main Slide 11
**Headline:** **Even with zero churn benefit, it pays back.**

```
[TOP-LEFT TAG]: BACKUP B35 · supports Slide 11                                           [TOP-RIGHT]: ↩ Slide 11
===================================================================================================================
"Even with zero churn benefit, it pays back"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: 3x3 SENSITIVITY MATRIX (PAYBACK IN MONTHS)]           [RIGHT 45%: THREE STACKED CARDS]

Call Deflection Rate \ CAMARA Pings | 45M Pings | 90M (Base) | 135M Pings
------------------------------------|-----------|------------|-----------
60% Deflection (Conservative)       | 48.2 mo   | 41.5 mo    | 36.1 mo
88% Deflection (Modeled Base)       | 39.8 mo   | 32.0 mo    | 27.6 mo
95% Deflection (Optimistic)         | 34.2 mo   | 28.1 mo    | 22.4 mo
*All cells assume ZERO subscriber churn reduction (BDT 0.00 churn benefit).

[RIGHT 45%: THREE STACKED CARDS]
• Zero-Churn Payback: Recovers BDT 29.6 Cr phased CapEx in 38.8 months phased (32.0 months run-rate), even with zero churn benefit.
• Operational Floor: Call center deflection (+35.6 Cr) and bank fraud APIs (+11.4 Cr) alone generate positive annual surplus.
• Downside Resilience: Survives worst-case stress test (60% deflection, 45M pings), recovering capital under combined volume shocks.

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Zero Churn Hurdle: Marketing retention set to strictly BDT 0.00.
• Breakeven Hurdle: Just 42% call deflection covers CapEx across 5 years without any API revenue.
• Deflection Engine: USSD Airtime Vault (*1218*1#) and instant SMS transaction tokens.
-------------------------------------------------------------------------------------------------------------------
Source: NTL Risk Management Stress Test; Gartner Contact Center Modeling. Modeled sensitivity estimate.
```

---

### SLIDE B36 · Supports Main Slide 11
**Headline:** **Why our numbers fell since Round 1.**

```
[TOP-LEFT TAG]: BACKUP B36 · supports Slide 11                                           [TOP-RIGHT]: ↩ Slide 11
===================================================================================================================
"Why our numbers fell since Round 1"
-------------------------------------------------------------------------------------------------------------------
[LEFT 55%: VALUATION BRIDGE (GROSS TAM TO NET EBITDA)]           [RIGHT 45%: THREE STACKED CARDS]

Valuation Stage               | Value (BDT Cr) | Nature of Adjustment
------------------------------|----------------|----------------------------------
Theoretical Gross TAM (R1)    | BDT 160.0 Cr   | Gross unconstrained market value
Zero-Cost Citizen Inclusion   | BDT -48.0 Cr   | Privacy delivered free via USSD
Speculative Verticals Removed | BDT -48.1 Cr   | Excluded unvalidated ad exchanges
Channel & Retailer Incentive  | BDT -4.9 Cr    | 10 poisha per merchant token
Voluntary VAS Cannibalization | BDT -5.9 Cr    | Ceased predatory auto-renewals
Liquid Refund Escrow Reserve  | BDT -2.4 Cr    | 14-day rolling refund escrow
Platform OpEx & 40 Staff FTEs | BDT -20.2 Cr   | Fully loaded engineering overhead
Itemized Net Accretive EBITDA | +BDT 30.6 Cr   | Bankable, recurring annual profit

[RIGHT 45%: THREE STACKED CARDS]
• Forensic Discipline: Eliminated BDT 96 Cr in speculative consumer fees and unverified ad monetization to protect commercial credibility.
• Audited Overhead: Fully expensed BDT 33.4 Cr in engineering headcount, kiosk bonuses, and refund buffers.
• Bankable EBITDA: Yields +BDT 30.6 Cr clean, defensible Year-3 EBITDA suitable for board-level capital commitment.

-------------------------------------------------------------------------------------------------------------------
[UNDER THE HOOD (GREY BOX)]:
• Forensic Haircut: 81% vanity metric discount applied to raw gross TAM.
• Opportunity Cost: Predatory VAS voluntarily terminated to cure churn at the root.
• Inclusion Mandate: Universal citizen access delivered without end-user subscription fees.
-------------------------------------------------------------------------------------------------------------------
Source: NTL Financial Planning & Analysis; Team Red Sky Audited Model Reconciliation; PE Valuation Standards.
```
