# from the directory containing the Dockerfile
docker build -t osint-reconng .

# Run interactively, persisting workspaces to a named volume
docker run -it --rm \
  -v reconng-data:/home/recon/.recon-ng \
  osint-reconng

