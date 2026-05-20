# Build
docker build -t osint-phoneinfoga .

# CLI usage (scan a number)
docker run --rm osint-phoneinfoga scan -n +17035878023

# Web UI
docker run --rm -it -p 5000:5000 osint-phoneinfoga serve

docker run -d \
  --name phoneinfoga \
  -p 8082:8082 \
  -e NUMVERIFY_API_KEY="dc2cc0f92aed9b24ef04bf4fb8ccae" \
  sundowndev/phoneinfoga serve -p 8082
