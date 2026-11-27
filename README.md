# Admiralty Corrections Hub

A client-side navigation toolset for modern bridge operations. It automates page filtering, tracing attachments, and amendment extractions from Weekly Notices to Mariners (WKNMs) and Publications Weekly (PWKLY) releases.

Designed to operate entirely offline without internet connectivity, saving time and printing paper on board.

---

## Tools Included

### 1. Chart Corrections (`CHART_CORRECTIONS.html`)
* Filters weekly notices to only pages affecting your active chart inventory.
* Detects and appends matching chart tracing sheets automatically.
* Verified pattern matching to eliminate false positive notice numbers.
* Produces an endorsement checklist page ready for printing and sign-off.

### 2. Publication Corrections (`PUBLICATIONS_CORRECTIONS.html`)
* Supports Sailing Directions, Lists of Lights, and Radio Signals.
* Extracts relevant amendments across Sections IV, V, and VI.
* Identifies and attaches weekly paste-in update slips and diagrams.
* Generates an amendment checklist for logbook documentation.

---

## Main Characteristics

* **Fully Offline**: Works directly in any standard browser using client-side JavaScript. No web server, Python, or runtime installation required.
* **Storage**: Keeps your inventory saved locally in the browser between sessions, with options to export and import backups.
* **Paper Saving**: Extracts only relevant pages, reducing large multi-hundred-page bulletins down to what is strictly needed.

---

## Getting Started

1. Clone or download this folder to your computer.
2. Open `CHART_CORRECTIONS.html` or `PUBLICATIONS_CORRECTIONS.html` directly in your web browser.
3. Set your active inventory on the left panel.
4. Load your weekly ZIP, folder, or PDF bulletin on the right panel.
5. Click the scan button to produce the trimmed PDF.

---

## Author

Developed by **Yiğit Alp Sarı**
* GitHub Profile: [https://github.com/yigitalpsari](https://github.com/yigitalpsari)

---

## License

This project is available under the MIT License.
