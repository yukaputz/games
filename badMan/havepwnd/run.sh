Build
docker build -t osint-hibp .

Run examples

Email breach check (needs API key):

docker run --rm \
  -e HIBP_API_KEY="your_hibp_key" \
  -e HIBP_USER_AGENT="your-app-or-email" \
  osint-hibp email target@example.com


Password exposure check (no key required):

docker run --rm osint-hibp password 'P@ssw0rd!'


Notes

HIBP email endpoint requires a paid API key and a non-empty User-Agent.

HIBP rate limits strictly (HTTP 429). Space out requests as needed.

The password check uses the official k-anonymity range API; your plaintext password is never sent—only a SHA-1 prefix.