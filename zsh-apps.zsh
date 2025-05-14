#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install apps for osx or linux.
#
# Authors:
#   Luis Mayta <luis@hadenlabs.com>
#

# shellcheck disable=SC2034  # Unused variables left for readability
ZSH_APPS_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_APPS_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_APPS_PATH}"/core/main.zsh

# shellcheck source=/dev/null
source "${ZSH_APPS_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_APPS_PATH}"/pkg/main.zsh