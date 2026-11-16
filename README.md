This repo includes the necessary files to create a docker images for
[agate](https://github.com/mbrubeck/agate), the
[Gemini protocol](https://geminiprotocol.net/) server.

The docker images created with this repo are push on
[dockerhub](https://hub.docker.com/repository/docker/vlahavas/agate/general)
and you pull them with:

```
docker pull vlahavas/agate
```

for the latest tag, or for a specific version, for example 3.3.25, run:

```
docker pull vlahavas/agate:3.3.25
```

To create the docker image locally, run:

```
make download
```

to get the latest binary, and then:

```
make build
```
