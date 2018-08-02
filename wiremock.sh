#!/bin/bash

cd wiremock
docker run -d \
  -p 8181:8080 \
  -v $(pwd)/files:/wiremock/__files \
  -v $(pwd)/mappings:/wiremock/mappings \
  ekino/wiremock