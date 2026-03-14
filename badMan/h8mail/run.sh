Build
docker build -t osint-h8mail .

Run examples

Show help

docker run --rm osint-h8mail -h


Single target email

docker run --rm osint-h8mail -t user@example.com


Targets from file & save CSV results

# targets.txt has one email per line
docker run --rm -v "$(pwd):/work" osint-h8mail \
  -t targets.txt -o results.csv


Use local breach compilation / combo lists

docker run --rm -v "/path/to/breach:/breach:ro" osint-h8mail \
  -t user@example.com --loose -bc /breach


API keys (HIBP, hunter.io, etc.) via config
Put your config.ini (per h8mail docs) in the current dir:

docker run --rm -v "$(pwd):/work" osint-h8mail \
  -t user@example.com -c config.ini


Notes

Many powerful lookups require API keys (e.g., HaveIBeenPwned). Use -c config.ini.

Mount your breach data read-only for speed and safety.

Add --local or --loose depending on your matching preference; see -h for all flags.