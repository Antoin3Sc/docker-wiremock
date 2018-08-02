# ekino/wiremock

[![Travis CI][travis-image]][travis-url]

## Description

Docker image to easily start a [wiremock](http://wiremock.org/) container

## Tags and Dockerfile links

- [`2.7.1`, `2.1.11`, `2`, `latest` (2/Dockerfile)](https://github.com/ekino/docker-wiremock/blob/master/2/Dockerfile)
- [`1.55`, `1` (1/Dockerfile)](https://github.com/ekino/docker-wiremock/blob/master/1/Dockerfile)

## Usage

#### Start

Start a server with our simple `Hello World` example mapping

```bash
# get the hello world assets
git clone https://github.com/Antoin3Sc/docker-wiremock.git

# start the server
cd docker-wiremock
docker run -d \
  -p 8181:8080 \
  -v $(pwd)/files:/wiremock/__files \
  -v $(pwd)/mappings:/wiremock/mappings \
  ekino/wiremock

# use it
curl http://127.0.0.1/hello

# reload mapping
curl -XPOST http://127.0.0.1:8181/__admin/mappings/reset

# get all mapping
curl http://127.0.0.1:8181/__admin
```

[travis-image]: https://img.shields.io/travis/ekino/docker-wiremock.svg?style=flat-square
[travis-url]: https://travis-ci.org/ekino/docker-wiremock

