# ⚓ Admiralty Notices to Mariners (WKNMs) Tools
### *Modern Web-Based Chart Corrections & Nautical Publications Extractor for Bridge Officers*

[![GitHub](https://img.shields.io/badge/GitHub-yigitalpsari-blue?logo=github)](https://github.com/yigitalpsari)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Pure Vanilla JS](https://img.shields.io/badge/Vanilla_JS-100%25_Offline-orange.svg)]()
[![Platform: Web](https://img.shields.io/badge/Platform-All_Browsers-lightgrey.svg)]()
[![SOLAS V Compliance](https://img.shields.io/badge/SOLAS-Chapter%20V%20Reg%2027-success.svg)]()

---

### 🌟 Overview
**Admiralty Notices to Mariners (WKNMs) Tools** is a standalone, client-side maritime web application suite developed specifically for Navigating Officers (2nd Mates) and Master Mariners. It automates the extraction and collation of relevant correction pages, chart tracings, and publication paste-in slips directly from United Kingdom Hydrographic Office (UKHO) **Weekly Notices to Mariners (WKNMs)** bulletins and **Publications Weekly (PWKLY)** releases.

It eliminates manual page-flipping through 100+ to 200+ page weekly bulletins, drastically reduces shipboard paper and ink consumption (typically **80%–90% reduction**), and generates official, audit-ready **Bridge Endorsement Checklists** for Port State Control (PSC) and vetting inspections.

It runs **100% offline** using bundled local libraries (`lib/`), ensuring complete operational capability in deep sea conditions without internet or satellite bandwidth usage.

---

### ✨ Key Features

- 🗺️ **Automated Paper Chart Correction Extractor (`CHART_CORRECTIONS.html`):**
  - Extracts only Section II notice pages that apply to your vessel's active chart inventory.
  - Automatically identifies, matches, and appends chart tracing PDFs (e.g. `Chart1057NM1234.pdf`) directly to the end of the compiled document.
  - Retains essential bulletin front-matter: Cover Page (Page 1), Charts Affected by Publication List, and the full `INDEX OF CHARTS AFFECTED` index table.

- 🛡️ **Dual-Layer Anti-False-Positive Engine:**
  - Contextual syntax analysis distinguishes true chart headings from past notice references (e.g., prevents `Chart 830 [ previous update 3930/26 ]` from falsely matching Chart `3930`).
  - Cross-verifies notice matches against the official `INDEX OF CHARTS AFFECTED` index table to cancel rogue hits.

- 📚 **Nautical Publications Amendment Extractor (`PUBLICATIONS_CORRECTIONS.html`):**
  - **Section IV**: Amendments to Sailing Directions (Pilots).
  - **Section V**: Amendments to Admiralty Lists of Lights & Fog Signals (Volumes A through Q).
  - **Section VI**: Amendments to Admiralty List of Radio Signals (ALRS Volumes 1 through 6).
  - Automatically matches and appends supplemental paste-in slips and diagrams (`NP...pdf`) for physical insertion into ship's books.

- 📋 **High-Contrast Bridge Endorsement Checklists:**
  - Appends an official, printer cartridge-saving black-and-white checklist page to the end of each generated PDF.
  - Includes notice numbers, bulletin pages, checkboxes `[ ]`, a NIL list of uncorrected items, and a formal officer sign-off endorsement block.

- 🌓 **Dual Themes (Navigator Light & Maritime Night):**
  - **Night Mode:** High-contrast dark theme designed for bridge watches without impairing night vision.
  - **Day Mode:** Classic Windows / Navigator Light aesthetic.
  - Adaptive theme scrollbars and styling matching the bridge software suite.

- 💾 **Permanent Local Storage & Backup:**
  - Vessel chart and publication inventories persist automatically in browser `localStorage`.
  - Export backup files (`.json`) or import existing lists (`.json`, `.csv`, `.txt`).
  - Opens with a clean slate (0 charts / 0 publications) ready for your ship's specific trading inventory.

---

### 📦 Applications in this Suite

| Application | File | Description |
| :--- | :--- | :--- |
| **Chart Corrections** | `CHART_CORRECTIONS.html` | Extracts Section II chart corrections, tracings, and bridge checklist |
| **Publication Corrections** | `PUBLICATIONS_CORRECTIONS.html` | Extracts Sections IV, V, VI amendments, paste-in slips, and checklist |
| **Offline Setup** | `download-libraries.bat` | One-click script to verify or download local offline libraries |

---

### 📜 SOLAS Chapter V Compliance

Under **SOLAS Chapter V, Regulation 27**:
> *"Nautical charts and nautical publications, such as sailing directions, lists of lights, notices to mariners, tide tables and all other nautical publications necessary for the intended voyage, shall be adequate and up to date."*

The generated **Bridge Endorsement Lists** provide clear, verifiable evidence during:
- **Port State Control (PSC) Inspections** (Paris MoU, Tokyo MoU, USCG).
- **Vetting Inspections** (SIRE 2.0, RightShip RISQ).
- **Internal & External ISM Audits**.

---

### 🚀 Getting Started

No web server, Python, or Node.js runtime required!

1. Clone or download this repository:
   ```bash
   git clone https://github.com/yigitalpsari/admiralty-corrections.git
   ```
2. Double-click **`CHART_CORRECTIONS.html`** or **`PUBLICATIONS_CORRECTIONS.html`** in any modern web browser (Google Chrome, Microsoft Edge, Brave, Firefox).
3. If the `lib` folder is missing, run **`download-libraries.bat`** once to download the offline dependencies.
4. Input your vessel's chart numbers or publications, drop the weekly ZIP or PDF release, and click **Scan & Generate Corrections PDF**!

---

### 👨‍✈️ Author & Contact

Developed by **Yiğit Alp Sarı**
- **GitHub Profile**: [@yigitalpsari](https://github.com/yigitalpsari)
- **Repository**: [https://github.com/yigitalpsari/admiralty-corrections](https://github.com/yigitalpsari)

---

### 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
