# Build
docker build -t osint-phoneinfoga .

# CLI usage (scan a number)
docker run --rm osint-phoneinfoga scan -n +17035878023

# Web UI
docker run --rm -it -p 5000:5000 osint-phoneinfoga serve
