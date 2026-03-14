🔹 Build
docker build -t osint-osintgram .

🔹 Run examples

Show help:

docker run --rm osint-osintgram --help


Check an Instagram user (replace target_username):

docker run -it --rm -v "$(pwd):/data" osint-osintgram target_username


That will start Osintgram in interactive mode. Results (like screenshots, CSV, etc.) will be saved in your mounted ./ directory on the host.

⚠️ Notes

Osintgram requires a valid Instagram account to work. You’ll need to log in first. Normally, you copy your session cookies (config/<username>.json) into the container.

Best way is to mount your local config into /opt/osintgram/config so you don’t have to re-login every time:

docker run -it --rm \
  -v "$(pwd)/config:/opt/osintgram/config" \
  -v "$(pwd)/results:/data" \
  osint-osintgram target_username


This way, session data and results persist between runs.

👉 Do you want me to also make a docker-compose.yml for Osintgram that keeps configs/results persistent automatically, alongside your other OSINT tools?