# Clone Lineage 21.0

rm -rf .repo/local_manifests/

repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
# Clone local_manifests repository

git clone https://github.com/Rinto02/Local-Manifest.git --depth 1 -b lineage-21.0 .repo/local_manifests

# repo sync
/opt/crave/resync.sh

# Set up build environment
export BUILD_USERNAME=rinto
export BUILD_HOSTNAME=crave

source build/envsetup.sh
# build
lunch lineage_RMX2020-userdebug


m bacon
