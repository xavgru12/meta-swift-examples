#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

# Docker

DOCKER_IMAGE_TAG="nxp-yocto-evaluation"
DOCKER_WORKDIR="$PWD"

# Yocto

IMX_RELEASE="imx-6.6.52-2.2.0"

YOCTO_DIR="$PWD"

MACHINE="imx8mnevk"
DISTRO="fsl-imx-xwayland"
IMAGES="imx-image-core"

REMOTE="https://github.com/nxp-imx/imx-manifest"
BRANCH="imx-linux-scarthgap"
MANIFEST=${IMX_RELEASE}".xml"
