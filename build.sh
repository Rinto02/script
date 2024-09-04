rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs --depth=1

echo ==================
echo Repo init success
echo ==================

# Local manifests
git clone https://github.com/Rinto02/Local-Manifest --depth 1 -b rising .repo/local_manifests
echo ============================ 
echo Local manifest clone success
echo ============================

# Remove and clone 
rm -rf hardware/mediatek
git clone --depth=1 https://github.com/Rinto02/android_hardware_mediatek hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr
git clone --depth=1 https://github.com/Rinto02/device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr

echo ==================
echo remove and clone success
echo ==================

# build
/opt/crave/resync.sh

echo =============
echo Sync success
echo =============

# Export
source build/envsetup.sh
export BUILD_USERNAME=Rinto02
export BUILD_HOSTNAME=crave
export TARGET_RELEASE=ap2a
export TARGET_PRODUCT=lineage_RMX2020
export TARGET_BUILD_VARIANT=user

echo ======= Export Done ======

# Set up build environment
source build/envsetup.sh
echo ====== Envsetup Done ======= 

# lunch 
. build/envsetup.sh
riseup RMX2020 user
mka bacon
