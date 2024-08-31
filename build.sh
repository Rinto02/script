rm -rf .repo/local_manifests/

# repo init rom
repo init --depth=1 -u https://github.com/AfterlifeOS/android_manifest.git -b 14 --git-lfs

echo ==================
echo Repo init success
echo ================== 

# Local manifests
git clone https://github.com/Gtajisan/local_manifests -b afterlife .repo/local_manifests

echo ============================ 
echo Local manifest clone success
echo ============================

# build
/opt/crave/resync.sh

echo =============
echo Sync success
echo =============

# Export
export BUILD_USERNAME=Infiniteluck777
export BUILD_HOSTNAME=crave echo

======= Export Done ======
# Set up build environment
source build/envsetup.sh
echo ====== Envsetup Done ======= 

# lunch 
. build/envsetup.sh
goafterlife Mi439_4_19
goafterlife Mi439_4_19 userdebug
