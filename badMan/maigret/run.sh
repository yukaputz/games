# Rebuild
docker build -t osint-maigret -f Dockerfile .

# Test help menu
docker run --rm osint-maigret --help

# Run against a username
docker run --rm osint-maigret yukaputz
