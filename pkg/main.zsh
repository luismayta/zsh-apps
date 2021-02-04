#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/pkg/linux.zsh
      ;;
    esac

    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/pkg/helper.zsh

    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/pkg/alias.zsh
}

apps::pkg::main::factory
