🔹 Build the image
docker build -t osint-whatsmyname .

🔹 Run the container

To just check the JSON (site patterns):

docker run --rm osint-whatsmyname | less


To use it programmatically, mount a script that queries the JSON. For example, if you have find_user.py:

docker run --rm -v $(pwd):/work -w /work osint-whatsmyname python3 find_user.py johndoe

docker run --rm -v $(pwd):/work -w /work osint-whatsmyname python3 find_user.py ms.peacockxx
⚠️ Notes

The project itself is just a dataset (web_accounts_list.json).

The recommended way is to consume the JSON from your own script or other OSINT tools.

If you want, I can make a helper script inside the container so you can run something like:

docker run --rm osint-whatsmyname johndoe


which would search the JSON for a username and print matched sites.