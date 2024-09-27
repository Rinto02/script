#!/usr/bin/env bash

# Clone Lineage 17.1
rm -rf .repo/local_manifests/
repo init -u https://github.com/DotOS/manifest.git -b dot11 --depth=1

# Clone local_manifests repository
git clone https://github.com/Rinto02/Local-Manifest.git --depth 1 -b dot11 .repo/local_manifests

# repo sync
/opt/crave/resync.sh

# Set up build environment
source build/envsetup.sh
export BUILD_USERNAME=rinto
export BUILD_HOSTNAME=crave
export KBUILD_USERNAME=rinto
export KBUILD_HOSTNAME=crave
export TZ=Asia/Dhaka
lunch dot_RMX2020-userdebug
make bacon
