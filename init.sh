#!/bin/bash

wget https://artifacts.toradex.com/artifactory/torizoncore-oe-prod-frankfurt/scarthgap-7.x.y/release/13/verdin-imx8mp/torizon/torizon-docker/oedeploy/torizon-docker-verdin-imx8mp-Tezi.tar
git submodule update --init --recursive
