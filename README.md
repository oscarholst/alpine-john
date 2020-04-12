# alpine-john
Alpine Linux with John the Ripper in a ready to go Docker container :whale:
Also includes my [Mercury wordlist](https://github.com/oscarholst/Mercury-Wordlist) and two extra binaries for zip2john and rar2john.

![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/oscarholst/alpine-john)
![Docker Pulls](https://img.shields.io/docker/pulls/oscarholst/alpine-john)
![Docker Stars](https://img.shields.io/docker/stars/oscarholst/alpine-john)

## Usage
Download the image via [Docker Hub](https://hub.docker.com/r/oscarholst/alpine-john/) or just clone the [Github repo](https://github.com/oscarholst/alpine-john/) and run docker-compose to build it yourself:
```
docker-compose up -d
```
or
```
# Build it
docker build -t oscarholst/alpine-john:latest .

# Run the container once and jump into the bash shell
docker container run -it --rm oscarholst/alpine-john:latest bash

# OR run the container in background
docker container run -d -it --name alpine-john oscarholst/alpine-john:latest

# And to access it
docker container exec -it alpine-john bash
```

## Example usage of John the Ripper
###### Cracking a bogus zip file also included in this repo
```
docker container exec -it <container> bash
zip2john cracking/VerySecretZip.zip > cracking/zip.hash
john --wordlist="wordlist/Mercury-Wordlist.lst" cracking/zip.hash
john cracking/zip.hash --show
```


## License
The alpine-john project is MIT licensed.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
