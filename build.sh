# Clone ProjectMatrixx

rm -rf .repo/local_manifests

repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs

# Clone local_manifests repository
git clone https://github.com/Rinto02/Local-Manifest.git --depth 1 -b matrixx .repo/local_manifests

# repo sync
/opt/crave/resync.sh

# Set up build environment
. build/envsetup.sh
export TZ=Asia/Dhaka
export BUILD_USERNAME=rinto
export BUILD_HOSTNAME=crave
make installclean
brunch RMX2020 userdebug
