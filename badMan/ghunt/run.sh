🔹 Build the image
docker build -t osint-ghunt .

🔹 Run GHunt

Interactive mode:

docker run -it --rm osint-ghunt


Check help menu:

docker run --rm osint-ghunt --help


⚠️ Important:
GHunt requires authentication (cookies or tokens from a Google account) before it can be used effectively. You’ll usually need to run its setup first:

docker run -it --rm -v "$(pwd)/ghunt-data:/opt/ghunt" osint-ghunt login


This mounts a local folder so GHunt can save your tokens/cookies for reuse across runs.