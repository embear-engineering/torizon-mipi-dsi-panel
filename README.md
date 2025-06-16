# Torizon mipi-dsi driver integration

This example shows how to build a mipi-dsi driver for TorizonCore. The driver supports the following devices, it is required to have a device tree overlay enabled for the specific panel. Currently it will build the verdin-imx8mp_am4001280 device tree overlay.

# Initialize

To initialize the project once we must run the init script. It will fetch a TorizonCore image and initialize the submodules. This is only required once.

```bash
./init.sh
```

# Build

To build the new torizon core image we can run the build script:
```
./build.sh
```

The resulting TorizonCore image will be in the output_directory folder.

# TorizonCore Builder

To work with the TorizonCore builder the tcb-env-setup.sh script must be sourced.
```
source tcb-env-setup.sh -s "$PWD"/storage
```

More information on how to use the TorizonCore Builder can be found in the [TorizonCore Builder documentation](https://developer.toradex.com/torizon/os-customization/).

## Some useful commands

Build the image manually:
```
torizoncore-builder build --file tcbuild.yaml
```

Build only the kernel module (for development):
```
torizoncore-builder kernel build_module sample-kernel-modules/mipi-dsi-panel
```

Deploy the image:
```
torizoncore-builder deploy dev-branch --remote-host 192.168.1.109 --remote-username torizon --remote-password "1" --reboot
```


