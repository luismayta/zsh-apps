#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install apps for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
export APPS_PACKAGE_NAME="apps"
APPS_PLUGIN_DIR="$(dirname "${0}")"
export APPS_SOURCE_PATH="${APPS_PLUGIN_DIR}"/src

# shellcheck source=/dev/null
source "${APPS_SOURCE_PATH}"/base.zsh

# shellcheck source=/dev/null
source "${APPS_SOURCE_PATH}"/apps.zsh
