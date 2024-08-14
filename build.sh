# Clone ProjectMatrixx

rm -rf .repo/local_manifests

repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b QPR3 -g default,-mips,-darwin,-notdefault

# Clone local_manifests repository
git clone https://github.com/Rinto02/Local-Manifest.git --depth 1 -b infinity .repo/local_manifests

# repo sync
/opt/crave/resync.sh

# Set up build environment
. build/envsetup.sh
export TZ=Asia/Dhaka
export BUILD_USERNAME=rinto
export BUILD_HOSTNAME=crave
lunch infinity_RMX2020-userdebug
mka bacon
