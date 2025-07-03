#!/bin/bash

if [ ! -f "torizon-docker-verdin-imx8mm-Tezi.tar" ]; then
    echo "torizon-docker-verdin-imx8mm-Tezi.tar not found, downloading..."
    wget https://artifacts.toradex.com/artifactory/torizoncore-oe-prod-frankfurt/scarthgap-7.x.y/release/13/verdin-imx8mm/torizon/torizon-docker/oedeploy/torizon-docker-verdin-imx8mm-Tezi.tar
else
    echo "torizon-docker-verdin-imx8mm-Tezi.tar already exists, skipping download."
fi
sed -i 's/    local: "\.\/torizon.*/    local: ".\/torizon-docker-verdin-imx8mm-Tezi.tar"/' tcbuild.yaml
sed -i 's/verdin-imx8mp_am4001280_overlay/verdin-imx8mm_wf40eswaa6mn0_overlay/' tcbuild.yaml
git submodule update --init --recursive
