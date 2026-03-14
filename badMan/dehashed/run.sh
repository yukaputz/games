🔹 Build
docker build -t osint-dehashed .

🔹 Run examples

Show help

docker run --rm osint-dehashed --help


Run a query (email lookup)

docker run --rm -e DEHASHED_API_KEY="your_api_key" -e DEHASHED_EMAIL="your_email" \
  osint-dehashed -q "target@example.com"


Save results locally

docker run --rm -v "$(pwd):/work" \
  -e DEHASHED_API_KEY="your_api_key" -e DEHASHED_EMAIL="your_email" \
  osint-dehashed -q "target@example.com" -o /work/results.json


⚠️ Notes

You must have a DeHashed account + API key.

Expose credentials via environment variables (DEHASHED_EMAIL, DEHASHED_API_KEY) or mount a config file.

The CLI supports multiple query types (email, username, IP, password, domain).

👉 Do you want me to also write a docker-compose.yml that injects your API credentials automatically (so you don’t have to type them every run)?