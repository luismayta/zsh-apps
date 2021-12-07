#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export APPS_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/brew branch:develop"
export APPS_PACKAGE_NAME=apps
export APPS_PATH_TMP=/var/tmp
export APPS_USER_AGENT="Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0"
SYSTEM_NAME=$(uname)
export SYSTEM_NAME
ARCH_NAME=$(uname -m)
export ARCH_NAME