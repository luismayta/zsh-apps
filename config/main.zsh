#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/config/linux.zsh
      ;;
    esac
}

apps::config::main::factory