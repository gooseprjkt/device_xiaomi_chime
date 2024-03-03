# Clone Kernel
git clone --depth=1 https://github.com/Dominium-Apum/kernel_xiaomi_chime -b android kernel/xiaomi/chime

# Clone Vendor
git clone https://github.com/Dominium-Apum/vendor_xiaomi_chime -b fourteen vendor/xiaomi/chime

# Clone Hardware
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Override host metadata to make builds more reproducible and avoid leaking info
export BUILD_USERNAME=kirill
export BUILD_HOSTNAME=Mac-Pro
export KBUILD_BUILD_VERSION=69
export KBUILD_BUILD_USER=kirill
export KBUILD_BUILD_HOST=Mac-Pro
