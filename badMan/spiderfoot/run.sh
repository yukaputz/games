docker build -t osint-spiderfoot .
docker run -it --rm \
  -p 5001:5001 \
  -v spiderfoot-data:/home/spiderfoot/.spiderfoot \
  osint-spiderfoot

#http://localhost:5001