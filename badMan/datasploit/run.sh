Build the image
docker build -t osint-datasploit .

🔹 Run DataSploit

Basic usage (lookup a domain):

docker run --rm osint-datasploit -d example.com


Interactive help:

docker run --rm osint-datasploit --help


⚠️ Notes

DataSploit requires API keys for many of its modules (Shodan, Censys, etc.).

You’ll need to edit the config.py or mount your own config file via -v when running the container.

Example with config file:

docker run --rm -v "$(pwd)/config.py:/opt/datasploit/config.py" osint-datasploit -d example.com
