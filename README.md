# alpine-john
Alpine Linux with John the Ripper in a ready to go Docker container :whale:
Also includes my Mercury wordlist available at Github and two binaries for zip2john and rar2john.

## Usage
Download the image via Docker Hub or just clone this repo and run docker-compose to build it yourself:
```
docker-compose up -d
```

## Example usage of John the Ripper
###### Cracking a bogus zip file also included in this repo
```
docker container -it exec <container> bash
zip2john cracking/VerySecretZip.zip > cracking/zip.hash
john --wordlist="wordlist/Mercury-Wordlist.lst" cracking/zip.hash
john cracking/zip.hash --show
```


## License
The alpine-john project is MIT licensed.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
