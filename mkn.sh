#!/usr/bin/env bash
set -exu

# [ ! -d "g" ] && git clone https://github.com/nigels-com/glew g

VER="$(mkn -G gl.glew.version -C ver)"
DIR="glew-${VER}"
FILE="${DIR}.tgz"

[ ! -f "${FILE}" ] && wget "https://github.com/nigels-com/glew/releases/download/glew-${VER}/${FILE}"
[ ! -f "${DIR}" ] && tar xf "${FILE}"
