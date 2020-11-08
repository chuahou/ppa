#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou
#
# Generic preparation script.
#
# Usage: ./prepare.sh <package> <tag>
#
# Gets upstream of <package> (based on the folder name) and prepares it
# according to <package>/prepare.sh, then prepares it for building in build/.

set -e

PACKAGE=$1
GIT_TAG=$2

# clone upstream
UPSTREAM_URL=$(awk '/Homepage:/{print $2}' $PACKAGE/debian/control)
git clone --depth 1 --branch $GIT_TAG $UPSTREAM_URL build/$PACKAGE

# run preparation script
$PACKAGE/prepare.sh build/$PACKAGE

# tar prepared upstream folder
(cd build; tar czf ${PACKAGE}_$(sed 's/^v//' <<< $GIT_TAG).orig.tar.gz $PACKAGE)

# copy debian folder over
cp -r $PACKAGE/debian build/$PACKAGE
