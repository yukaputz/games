Build
docker build -t osint-googledorks .

Run: single dork
docker run --rm osint-googledorks \
  'site:example.com inurl:admin'

Run: multiple dorks from a file

Create dorks.txt (one query per line), then:

docker run --rm -v "$(pwd):/work" \
  -e RESULTS=100 -e DELAY=3 \
  osint-googledorks --file dorks.txt


Notes

RESULTS controls results per query (default 50).

DELAY adds a pause between queries to be gentler with rate limits.

Some searches may be blocked by Google/CAPTCHA; that’s normal for automated queries.