#!/bin/bash
set -e

# Configuration
SRC_ROOT="${SRC_ROOT:=$(pwd)}"
POKY_DIR="${POKY_DIR:=$SRC_ROOT/poky}"

MACHINE="${MACHINE:=qemuarm}"

BUILD_DIR=build-$MACHINE
CONF_DIR=$BUILD_DIR/conf

rm -rf $CONF_DIR
ln -s ../conf $CONF_DIR
source $POKY_DIR/oe-init-build-env $BUILD_DIR

# build Swift
bitbake core-image-minimal

