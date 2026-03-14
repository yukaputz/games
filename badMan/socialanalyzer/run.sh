docker build -t osint-socialanalyzer-web -f Dockerfile .
docker run -it --rm -p 9005:9005 osint-socialanalyzer-web
# then: http://localhost:9005/app.html
