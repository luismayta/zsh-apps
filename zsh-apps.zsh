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

export APPS_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export APPS_MESSAGE_NVM="Please install nvm or use antibody bundle luismayta/zsh-nvm branch:develop"
export APPS_MESSAGE_NOT_FOUND="this not found installed"

# shellcheck source=/dev/null
source "${APPS_SOURCE_PATH}"/base.zsh

# cross::os functions for osx and linux
function cross::os {

    case "${OSTYPE}" in
        darwin*)
            # shellcheck source=/dev/null
            source "${APPS_SOURCE_PATH}"/osx.zsh
            ;;
        linux*)
            # shellcheck source=/dev/null
            source "${APPS_SOURCE_PATH}"/linux.zsh
            ;;
    esac

}

cross::os

# shellcheck source=/dev/null
source "${APPS_SOURCE_PATH}"/utils.zsh

# shellcheck source=/dev/null
source "${APPS_SOURCE_PATH}"/apps.zsh
