Build
docker build -t osint-linkedin2username .

Common runs

Basic (interactive help):

docker run --rm osint-linkedin2username --help


Generate usernames for a company (prints to stdout):

docker run --rm osint-linkedin2username -C "Acme Inc"


Save to a file in your current dir:

docker run --rm -v "$(pwd):/work" osint-linkedin2username -C "Acme Inc" -o /work/acme.txt


Specify a username format for corp logins (e.g., first initial + last):

docker run --rm -v "$(pwd):/work" osint-linkedin2username \
  -C "Acme Inc" -f "{first}.{last}" -o /work/acme_users.txt


If your version requires auth (LinkedIn often does):

With username/password:

docker run --rm osint-linkedin2username -u myemail@example.com -p 'MySecretPass' -C "Acme Inc"


Or with a session cookie (often named li_at):

docker run --rm -e LI_AT='paste_your_li_at_cookie' \
  osint-linkedin2username --cookie "$LI_AT" -C "Acme Inc"


Notes

LinkedIn frequently rate-limits or blocks scraping; auth (login or cookie) is commonly required.

Use -d example.com if you want email-style output (e.g., john.doe@example.com).

Use -k to keep going on minor errors and -n to limit number of names for testing.

Output formats depend on the repo version you pull; run --help to see supported flags.