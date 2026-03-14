🔹 Build the image
docker build -t osint-theharvester .

🔹 Run theHarvester

Example query:

docker run --rm osint-theharvester -d example.com -b bing


Run interactively:

docker run -it --rm osint-theharvester --help
