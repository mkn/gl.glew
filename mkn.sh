#!/usr/bin/env bash
set -exu

VER="$(mkn -G gl.glew.version -C mkn.prop.yaml)"
DIR="glew-${VER}"
FILE="${DIR}.tgz"

[ ! -f "${FILE}" ] && wget "https://github.com/nigels-com/glew/releases/download/glew-${VER}/${FILE}"
[ ! -f "${DIR}" ] && tar xf "${FILE}"
