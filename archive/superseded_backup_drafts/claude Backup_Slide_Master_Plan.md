# Backup Slide Master Plan (merged: your architecture + the earlier 24-slide plan)

Legend: ✅ confirmed from your screenshots or a live source · ◻ unverified, check before showing · ⚑ fix or decision needed · P1/P2/P3 = build priority.

---

## 1. Verdict on your plan

**Keep (you are right):**
- **Follow the main-slide order.** A judge who asks about slide 6 should find the backup in slide-6 order. Do this.
- **1–2 slides per feature**, simple mechanism, customer impact, business impact, real-world proof. Good template.
- **Sales-pitch voice, not engineering voice.** Right call. Judges score customer-centric (30%) and impact (25%) far above plumbing.
- **Relaxed design, no word crush.** Agree. Backups are read by a judge who asked for them, so whitespace helps. One idea per slide.

**Change (be blunt with yourself):**
1. **"No limit" is true for slide count, not for retrieval time.** A judge's question must be answerable in under 10 seconds. That needs **one clickable Backup Index slide** (B00) and **finding-style titles** ("Hidden from strangers, never from a court"), not topic labels ("B05 Stealth mechanism").
2. **Your plan is missing drawers the case requires:** **third-party governance**, **awareness/training**, the **six AI systems in detail**, the **eight questions with proof**, the **roadmap and pilot gate** (it's no longer on a main slide), and **finance depth** (you give it 1 slide; a CFO will drill into assumptions and stress tests). Also the **silent closing slide** means the Never List and "impact for Bangladesh" need a home here.
3. **Drop the 4 persona deep-dive pages (B03A–D).** Your evidence slides already carry Fatema, Kashem Bhai and Fahim. Replace with **one Tanvir evidence slide** plus **one persona map** (person → problem → feature → law → proof). That is more useful and takes a quarter of the effort.
4. **Several items in your draft contradict the main deck or each other.** See section 4. The two worst: "network AI detects child behavioral signatures" (that is profiling children, which our whole design avoids) and "$0.03/query" (the model uses **BDT 1**).

---

## 2. 🚨 Section-number alert (the most important finding in your screenshots)

Your Fahim slide shows the **Act itself** in Bangla: **ব্যক্তিগত উপাত্ত সুরক্ষা আইন, ২০২৬ (২০২৬ সনের ৬৩ নং আইন)**, i.e., **Act No. 63 of 2026** ✅. That means you have the real text. And the real text suggests our main deck's section numbers may be wrong:

| Topic | Main deck / notes say | Your plan / screenshot says |
|---|---|---|
| Children | Sec **21 & 35** | Sec **9** (child consent via parent/guardian; best-interest rule) |
| Erasure | Sec **18** | Sec **13(2)** |
| Cross-border / residency | Sec **29–30** | Sec **14 and 29** |
| Independent officer | Sec 23 | Sec 23 |
| Audit liability | not cited | Sec **17 and 21** |
| PII definition / mandate | not cited | Sec **16 and 2(17)** |

**The main deck's numbers came from our own evidence catalog, not from the Act.** If the Act says Sec 9 for children, then "Sec 21 and 35" on slides 2 and 5 is wrong, and a Robi privacy lawyer in the room will notice.
**Do this before anything else:** build one **Section Truth Table** from the Act (section → plain-English meaning → which feature), then update slides 2, 5, 7, 9, 10, the notes and the script. If you paste me the section list (Bangla or English), I will build the table and list every place to change.

**Also on the Fahim slide (accuracy):** Section 9 as shown says: *(1)* a child's data may be processed only with the consent of a parent/legal guardian, in the manner set by regulations; *(2)* it must be processed with the child's rights and interests protected. The **ban on targeted ads, tracking, profiling and behavioral monitoring** you quote is from the **competition case file**, not clearly from Sec 9. And definition **(13)** of "profiling" is a gift: it covers automated evaluation or prediction of a person's economic situation, interests, behavior, habits, location or movement. That is exactly what churn and marketing models do.
*Unofficial gloss for the slide (have a Bangla speaker verify):*
- **Sec 9(1):** "Personal data of a child may be collected or processed only with the consent of a parent or legal guardian."
- **Sec 9(2):** "It must be processed so that the child's rights and interests are protected and not harmed."
- **Definition (13) "profiling":** "Automated processing of personal data that evaluates, analyses or predicts a person's economic situation, interests, reliability, behavior, habits, location or movements."

---

## 3. Feedback on the 5 finished slides

**Slide 1 · Fatema ("Harassment for sharing of phone number")**
- **Blur names.** The Prothom Alo clipping shows the accused's name, and a privacy pitch should not display one. Same on slide 2 (the TBS clipping names a gang member).
- The centre claim *"delivery manifests print her raw SIM number"* is **not in any clipping**. Say what the sources show: *"the rider already had her number from the order, and called and messaged her directly."*
- Retitle with the finding: **"A delivery order should not hand a stranger your number."**
- Label each clipping with outlet and date, and group them: **Badda (Aug 2026, current)** · **Bhashantek (2022, same pattern)** · **India (same pattern elsewhere)**.
- Typos: "Harrasement".

**Slide 2 · Kashem Bhai and Tanvir**
- **Give Tanvir his own slide (B06).** His text ("ready to port… silent VAS") isn't supported by the one clipping beside it. "Ready to port" is an assumption; label it or drop it.
- The Financial Express item is confirmed ✅ (13 Oct 2026), but it is a **Letter to the Editor**, a reader's opinion, not news. Label it so, and **show one highlighted sentence**; a bare headline proves nothing.
- Keep the TBS 30-seconds clipping and the Haque excerpt: strong.

**Slide 3 · What research showed**
- **Be precise.** "Phone numbers leaked & sold in bulk" is in the paper as something the authors **cite from other reporting** ([67]); the paper's own interviews report "several past incidents where female customers' phone numbers were leaked… and used to harass". Say "**reported**".
- The study is **ethnographic/qualitative** (researchers observed shops). Do **not** say "100% of shops" or "audited"; say "**in the shops the researchers observed, notebooks were always exposed**". I have corrected this phrase in all my earlier notes files.
- Typo "Harrasement". Add the DOI line from slide 2.

**Slide 4 · Fahim and the Act**
- Add the **English gloss** (judges can't read the Bangla). Fix the claim "violating PDPA Section 9" to the precise wording in section 2. Drop "triggering predatory gaming charges" unless you have a source.
- Fix "privacy mastero case file" → "competition case file".
- **Resolve the section mismatch** (section 2) first.

**Slide 5 · Macro precedents**
- **Retitle.** "Independent Audit" overclaims: these are news and papers, not an audit. Try **"The same pattern, again and again."**
- **BTRC clipping:** the Daily Star headline reads *"No bar for now on two telcos' value-added services"*. That suggests the ban was **not** imposed or was stayed. **Read the article and say only what it says** (for example "BTRC took action on two operators' VAS"). I had written "BTRC suspended" in earlier notes; I have softened it everywhere.
- **Operator names:** the judges work for the competition's host operator. Say "two operators" and "cloned SIMs"; don't name a real operator in a negative example.
- Add a one-line **"what this proves"** under each clipping. Mark **India** items as "the same pattern in India".
- Check the **"157 cloned SIMs"** and **"৳1.80 retailer economics"** claims in the CHI 2017 paper before quoting.

---

## 4. Corrections to your draft plan (B05–B11)

| Your item | Problem | Fix |
|---|---|---|
| "Why Truecaller/Apple fail" | Bashing named companies invites a fight, and Truecaller is *itself* a number-exposure risk (crowd-sourced contact books), not a privacy competitor | Compare **categories**: caller-ID apps, in-app masking, phone OS features, operator network. If a judge asks about Truecaller, answer in one line |
| "**Robi** controls SS7/IMS/OCS" | The deck advises **NTL**; naming Robi in architecture claims is both inconsistent and presumptuous | Say "NTL's core network" everywhere |
| "Network AI detects child behavioral signatures" | **That is profiling children**, the very thing we prohibit | Replace with **default zero-profiling + guardian line shield**; "we never guess ages" |
| "14-day escrow buffer on **balance transfers**" | The escrow holds **developer earnings** for refunds, not customers' balances | Describe it as the developer escrow |
| "CAMARA webhook … to **freeze banking OTPs for 24 hours**" | An operator can't freeze bank OTPs. The bank decides | "Bank asks 'SIM swapped recently?' and **holds or steps up** high-risk transfers" |
| "Air-gapped on-premise **SLM**" | New architecture that contradicts the main deck (gateway scrubs before an external model) | Keep the gateway design; mention a local model only as a future option |
| "**Audited** OpEx", "audited financials" | The numbers are **modeled**; "audited" is a false claim | "Modeled", "itemized" |
| "**$0.03/query**" | Model uses **BDT 1 per check** (≈ $0.008) | Use BDT everywhere |
| "hardware **NPUs**" | Not in our design | **HSMs**, software licences, 40 FTE |
| "**SENTINEL** features" | Deck is **Red Sky / NTL Shurokkha** | Rename |
| Sections 9, 13, 14, 16, 17, 21, 23, 29 | See section 2 | Truth table first |
| "Hard deletion across backups/DR" | Good question to answer, but not designed | Add one line to the Clean Wall slide: erasure includes **backups via cryptographic erasure** [destroying the encryption key so backup copies become unreadable] ◻ design addition, confirm |

---

## 5. The merged architecture (in main-slide order)

**Numbering:** B00 = index; B01–B05 = your finished evidence slides. P1 = most likely asked, build first.

| ID | Headline (finding-style) | Anchor | Answers the question | Content (3 blocks + proof) | Tier |
|---|---|---|---|---|---|
| **B00** | "Ask for any topic. Each is one click away." | all | Navigation | 8 drawers, hyperlinked | **P1** |
| B00b | "Four people, four problems, one platform" | 2 | "How does it all connect?" | table: person → problem → feature → law → proof | P2 |
| B01–B05 | *(done: Fatema, Kashem, Research, Fahim, Precedents)* | 2 | "Is it real?" | clippings | done |
| B06 | "A recycled number can hand a stranger his bank OTPs" | 2 | Tanvir's evidence | FE letter (labelled), TBS recycling piece ✅(exists), Daily Star VAS clipping | P2 |
| B07 | "PDPA says erase. The telecom law says keep." | 2 | "Is the conflict real?" | Act text (erasure) + retention rule + 2025 ordinance ◻ | **P1** |
| **B08** | "Why an app can't do this, and the network can" | 3 | "Why not an app?" | 3 limits (reach, stay, see everyone); table of categories | **P1** |
| B09 | "One front door for every phone: *1218#" | 3 | "Walk me through the menu" | locked menu tree; USSD vs IVR | P2 |
| B10 | "Built on what NTL already has" | 3 | "We already have ISO/DLP/Zero Trust" | existing controls → gaps; existing cloud reuse | P2 |
| B11 | "A courier gets a number that expires. Fatema keeps hers." | 4 | Stealth mechanism | 4-step call path; expiry; customer + NTL impact; masking precedents ◻ | P2 |
| **B12** | "Hidden from strangers, never from a court" | 4 | "Doesn't it help criminals?" | warrant flow, two keys (CLO + DPO), logged unlock; 2025 ordinance ◻ | **P1** |
| B13 | "Top up without saying your number" | 4 | Flexiload mechanism | token steps; scoped, single-use; Safaricom ✅; DMP case ✅ | P2 |
| B14 | "Shopkeepers earn more and learn less" | 4 | "Why would shops adopt?" | +10 poisha ≈ BDT 4.8 Cr; ~5 recharges/kiosk/day; pilot gate | P3 |
| B15 | "Any phone, any dialect, one receipt" | 5 | Rights without smartphones | menu, 4 dialects, signed receipt, yearly check-up | P2 |
| **B16** | "One dial takes a child's line out of profiling" | 5 | "How do you know who's a child?" | we don't guess; default zero-profiling; guardian PIN; honest limits; Act Sec 9 ✅ | **P1** |
| **B17** | "Prove 'over 18' without showing an ID" | 5 | "SIM can't do zero-knowledge" | 3 steps (SIM signs, vault proves, platform learns yes/no); wristband analogy; limits | **P1** |
| **B18** | "No third-party charge without your PIN" | 6 | "Who pays the refund?" | how silent VAS billing works; vault flow; developer escrow; BTRC clipping (read first) | **P1** |
| **B19** | "Banks ask one question and get one word" | 6 | "What does the bank learn?" | CAMARA flow; true/false only; revenue (90M @ BDT 1.50 = +BDT 11.40 Cr net); Dialog Axiata precedent ✅ | **P1** |
| B20 | "Know in seconds when a SIM opens on your ID" | 6 | Identity locks | NID Watch, clean recycling, fresh swap; 2023 NID leak ✅ | P2 |
| B21 | "Where is our data? Answered in one map" | 7 | Management Q1–Q2 | lineage picture; what gets tagged | P2 |
| **B22** | "The AI never sees who you are" | 7 | "How do you stop leaks to AI?" | before/after prompt example; injection guard; **mock Bangla action card** | **P1** |
| B23 | "Restricted data stays in Bangladesh" | 7 | Management Q5 | allow-list; regional hubs; what's restricted | P2 |
| **B24** | "Each AI has a risk, a control and an owner" | 8 | "Walk me through each AI" | 6 rows: purpose, case risk, control, PDPA duty, owner | **P1** |
| **B25** | "Erase the profile. Keep the signal. Never mix them." | 9 | "How do you obey both laws?" | two-chamber diagram; one-way link; 24h / 24 months; backups line | **P1** |
| **B26** | "One named owner for every privacy decision" | 9 | "Who decides when they disagree?" | 3 tiers; RACI; DPO sign-off is NTL policy | **P1** |
| **B27** | "Vendors get tokens, sandboxes and contracts" | 9 | Case: third-party governance | registry, sandbox, zero-retention, penalty (proposed) | **P1** |
| B28 | "Awareness is the menu on every phone" | 9 | Case: awareness | employees, retailers, customers, vendors; metrics | P2 |
| **B29** | "Every PDPA duty has an owner and a proof" | 10 | "Show me the sections" | **verified** section table (section 2 first) | **P1** |
| B30 | "What an auditor would see for each question" | 10 | Management Q7 | 8 questions → artefact | P2 |
| B31 | "Four phases, one pilot gate" | 11 | "How do you deliver?" | roadmap; 25,000-kiosk pilot; gate (≥60%, ≥30%) | P2 |
| B32 | "We reuse what NTL already owns" | 11 | "Isn't this expensive?" | CapEx 17.8 + 11.8; >BDT 65 Cr avoided breakdown | P2 |
| **B33** | "Five years, every cost shown" | 11 | "Show me the model" | schedule table | **P1** |
| **B34** | "Every number has an input and a source" | 11 | "What are you assuming?" | assumptions register; flag unsourced | **P1** |
| **B35** | "Even with zero churn benefit, it pays back" | 11 | "What if you're wrong?" | 3×3 table; zero-churn calc | **P1** |
| **B36** | "Why our numbers fell since Round 1" | 11 | "You said 160–225 Cr" | gross → net bridge | **P1** |
| B37 | "Five promises and a nation's reach" | 12 | Applicability; Never List | covenants, amendment lock, Smart Bangladesh | P2 |
| B38 | "What we do not claim" | all | Credibility | limits + design targets table | P2 |

**Counts:** 19 P1 · 15 P2 · 1 P3 · 5 done = **about 40 slides**.

---

## 6. The relaxed template (use for every new slide)

**Layout (16:9):**
1. **Top-left tag** (small): `BACKUP B18 · supports Slide 6`. **Top-right:** `↩ Slide 6` hyperlink.
2. **Headline = the answer, as a full sentence** (finding-style, ≤ 12 words).
3. **Left 55%:** one simple diagram (3–5 boxes with arrows). No paragraphs.
4. **Right 45%:** three stacked cards: **For the customer** · **For NTL** · **Proof or precedent**. Each card ≤ 20 words.
5. **Under the hood** (small grey box, optional): 2–3 technical terms, each explained in a few words. This is how you keep depth without jargon walls.
6. **Footer:** source (outlet, date, DOI/URL), in 9–10 pt.

**Rules:**
- **≤ 80 words visible**, excluding diagram labels. One idea per slide. Body text ≥ 14 pt.
- **Benefit first:** "You can…", "NTL gets…". Technical terms only in the grey box.
- **Never use:** "audited", "100%", "zero risk", "definitive", "proven" (unless you can cite), "sunk", "Robi" as the operator, "SENTINEL".
- **Always label:** *modeled*, *proposed*, *design target*, *composite persona*.
- **Photos and names:** blur individuals' names and numbers in clippings.
- A one-line **speaker answer** goes in the slide notes, not on the slide.

---

## 7. Proof bank (what you can show per feature)

| Feature | Proof you already have | Proof to find or check | Status |
|---|---|---|---|
| Stealth Number | Badda, Bhashantek, HT/TIME clippings | Ride-hailing number masking (Uber/Grab) | ◻ |
| Blind Flexiload | TBS 30-second gang ✅; Haque excerpt + Figure 2 ✅ | Safaricom M-Pesa masking (Mar 2026) ✅; Vodafone Sakhi | Sakhi ◻ |
| Child-Shield | Act Sec 9 and definition (13) ✅; case-file quote ✅ | none needed | ✅ |
| Age proof | none | a cited precedent for privacy-preserving age checks | ◻ find or skip |
| Airtime Vault | Daily Star Dec 2020 clipping | **read it**; BTRC "46% unauthorized billing" (your note) ◻ | ⚑ |
| SIM-swap check | FE letter (labelled) | GSMA CAMARA SIM Swap spec ✅ (public); Dialog–LankaPay | Dialog ◻ |
| NID Watch | CHI 2017 paper; 2023 NID exposure (TechCrunch) ✅ | the "157 cloned SIMs" figure | ◻ |
| AI gateway | Pathao breach clipping ✅ | OWASP LLM Top 10 ✅ (public list) | ✅ |
| Clean Wall | Act text (erasure); retention rule | 2025 Telecom Amendment Ordinance | ◻ |

---

## 8. Build order and effort

1. **Sitting 1: navigation and moat:** B00, B08, B12, B16, B17 (≈ 2 hours once text is ready).
2. **Sitting 2: money and bank:** B18, B19, B22, B24 (≈ 2 hours).
3. **Sitting 3: law and governance:** B25, B26, B27, B29 (**after the Section Truth Table**).
4. **Sitting 4: finance:** B33, B34, B35, B36 (resolve the churn 12% vs about 15% decision and slide-11 numbers first).
5. **Then P2** in main-slide order; **P3** only if time remains.

**Rule of thumb:** about 20 minutes per slide once its text is written in the template.

## 9. Decisions I need from you
1. **Send me the Act's section list** (Bangla or English), so I can build the Section Truth Table and the "what to change" list.
2. **Confirm:** use "NTL / Red Sky" throughout, never "Robi" or "SENTINEL".
3. **Confirm:** one Backup Index slide, plus finding-style titles.
4. **Tell me which drawer to start with.** I'd start with Sitting 1. I'll write exact text for each slide in the template: headline, one-sentence answer, three cards, "under the hood" box, footer.
