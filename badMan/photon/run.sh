🔍 What Photon Does

Crawls websites: Follows links up to a set depth (-l level).
Collects structured data:
Emails, phone numbers, usernames
Social media links
Subdomains
Files (PDFs, DOCs, etc.)
Extracts JavaScript endpoints: Useful for bug bounty / security research.
Stores results: JSON or plain-text, easy to analyze later.
Respects threading: You can speed it up with -t threads.

📌 Example Use Cases

OSINT Investigations
Find emails, usernames, or social accounts linked to a target website.

Bug Bounty / Pentesting
Map attack surface: subdomains, hidden directories, API endpoints.

Digital Footprint Analysis
See what information an organization’s public site leaks.

Compliance / Security Audits
Ensure no sensitive data (like emails or credentials) is exposed on public pages.













Build
docker build -t osint-photon -f Dockerfile .

Run (basic)
docker run --rm osint-photon --help
docker run --rm osint-photon -u https://example.com -l 3 -t 10

Save results locally

Photon writes output to a directory you specify; mount /data and point Photon there:

mkdir -p ./photon-results
docker run --rm -v "$PWD/photon-results:/data" \
  osint-photon -u https://example.com -l 3 -t 10 -o /data