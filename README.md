# cloud-home

Run a persistent container "mauro" from the image "rocker/verse" with
the host .ssh keys.

1. Create an image with the .ssh keys of the host.

```bash
docker build . -t rocker_verse_mauro_ssh
````

2. Run a container from that image. 

```bash
docker run --name mauro -d \
    -v /mnt:/mnt \
    -p 8787:8787 \
    -e ROOT=true \
    -e PASSWORD=<FIXME> \
    rocker_verse_ssh
```

