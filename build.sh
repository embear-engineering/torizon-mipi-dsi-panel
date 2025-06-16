#!/bin/bash

rm -rf output_directory
docker run --rm -it -v /deploy -v "$(pwd)":/workdir -v "$PWD"/storage:/storage -v /var/run/docker.sock:/var/run/docker.sock --network=host torizon/torizoncore-builder:3 build --file tcbuild.yaml

