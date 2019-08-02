# RANCHER RKE in Alpine

An Alpine container with Rancher RKE

## Build

```sh
docker build \
    -t figaw/alpine-rke:0.2.4-alpine-3.10 \
    -t figaw/alpine-rke:latest \
    --build-arg VERSION=0.2.4 .
```

> NB: "VERSION" must be passed as a build argument during image build.

## Usage

```
# must mount the local folder to /apps in container.
docker run -ti --rm -v $(pwd):/apps figaw/alpine-rke

# run container as command
alias rke="docker run -ti --rm -v $(pwd):/apps figaw/alpine-rke"
rke --version
```

## Acknowledgements

The Dockerfile and "Usage" is basically copy-pasted from
[alpine-docker/helm](https://github.com/alpine-docker/helm),
hence the matching license.
