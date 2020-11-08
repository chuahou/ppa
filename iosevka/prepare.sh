#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou

set -e

UPSTREAM_URL=https://github.com/be5invis/Iosevka.git
GIT_TAG=$1
WORKDIR=$2

# get upstream
git clone --depth 1 --branch $GIT_TAG $UPSTREAM_URL $WORKDIR
(cd $WORKDIR; npm install)

# create upstream tarball
(cd $WORKDIR/..; \
	tar czf iosevka_$(sed 's/^v//' <<< $GIT_TAG).orig.tar.gz \
	$(basename $WORKDIR))

# copy debian dir
cp $(dirname $0)/debian -r $WORKDIR