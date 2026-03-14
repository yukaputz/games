Build
docker build -t osint-sherlock -f Dockerfile .

Run examples

Look up one username:

docker run --rm osint-sherlock username123  saralmastro@yahoo.com

docker run --rm osint-sherlock ms.peacockxx 


Multiple usernames, save results (mount current folder for outputs):

docker run --rm -v "$PWD:/data" osint-sherlock --csv /data/results.csv user1 user2 user3


Tune timeouts / workers (helpful to avoid rate-limits):

docker run --rm osint-sherlock --timeout 10 --print-found --workers 20 username123


Want Tor support? You can add it by installing Tor in the image and running with --tor, but the minimal image above keeps things lightweigh