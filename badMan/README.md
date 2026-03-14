# badMan

OSINT tools collection. Use only on assets you own or have explicit permission to test.

## Quick start (generic)
- Enter a tool directory and follow its README or setup instructions.
- Prefer containerized or venv installs if the tool supports it.
- Keep outputs under a separate working directory to avoid mixing results.

## Example commands (fictional targets)
These use placeholder data only (e.g., `example.com`, `alice@example.com`).

### Username search
- Sherlock:
  `sherlock alice_example`
- Maigret:
  `maigret alice_example`

### Email checks
- Holehe:
  `holehe alice@example.com`

### Phone number OSINT
- PhoneInfoga:
  `phoneinfoga scan -n +1-555-555-0100`

### Domain recon / collection
- theHarvester:
  `theHarvester -d example.com -b all`
- Photon:
  `photon -u https://example.com -o output/photon_example`

### Frameworks
- Recon-ng:
  `recon-ng`
  `marketplace install recon/domains-hosts/hackertarget`
  `modules load recon/domains-hosts/hackertarget`
  `options set SOURCE example.com`
  `run`
- SpiderFoot:
  `spiderfoot -l 127.0.0.1:5001` (then open the UI and set a target like `example.com`)

## Notes
- Some tools require API keys (e.g., HaveIBeenPwned, Dehashed) or app credentials (e.g., OSINTgram, GHunt).
- If you see errors, read the tool's README for required tokens and setup steps.
