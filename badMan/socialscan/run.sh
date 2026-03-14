Build
docker build -t osint-socialscan .

Run examples

Check a couple of usernames:

docker run --rm osint-socialscan --usernames alice bob


Check emails:

docker run --rm osint-socialscan --emails test@example.com foo@bar.com


Save output to a file (JSON recommended) in your current directory:

docker run --rm -v "$(pwd):/work" osint-socialscan \
  --usernames alice bob --json > results.json


Filter to a specific site (replace with a supported site name):

docker run --rm osint-socialscan --usernames alice --site github


Notes

Running behind VPN/tor/proxies can affect reliability/latency; be mindful of rate limiting or CAPTCHAs from target sites.

Use --help to see all flags supported by your installed version:

docker run --rm osint-socialscan --help