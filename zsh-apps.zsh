#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install apps for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
apps_package_name="apps"

APPS_PLUGIN_DIR="$(dirname "${0}":A)"
APPS_SOURCE_PATH="${APPS_SOURCE_PATH}"/src

# shellcheck source=/dev/null
source "${APPS_SOURCE_PATH}"/base.zsh
