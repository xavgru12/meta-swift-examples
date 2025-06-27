#!/bin/bash
set -e

# Configuration
SRC_ROOT="${SRC_ROOT:=$(pwd)}"
POKY_DIR="${POKY_DIR:=$SRC_ROOT/poky}"
META_SWIFT_DIR="${META_SWIFT_DIR:=$SRC_ROOT/meta-swift}"

MACHINE="${MACHINE:=qemuarm}"

# Build Yocto Poky
cd $POKY_DIR
source oe-init-build-env
bitbake-layers add-layer $META_SWIFT_DIR
# Customize build
touch conf/sanity.conf
CONF_FILE=./conf/local.conf
rm -rf $CONF_FILE
echo "# Swift for Yocto" >> $CONF_FILE
echo "MACHINE=\"${MACHINE}\"" >> $CONF_FILE
echo 'IMAGE_FEATURES += "debug-tweaks"' >> $CONF_FILE
echo 'IMAGE_INSTALL:append = " swift-hello-world"' >> $CONF_FILE


#echo 'SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"' >> $CONF_FILE
#echo "USER_CLASSES += \"buildstats buildstats-summary\"" >> $CONF_FILE

# build Swift
bitbake core-image-minimal
