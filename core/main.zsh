#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::core::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/core/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/core/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/core/linux.zsh
      ;;
    esac
}

apps::core::main::factory