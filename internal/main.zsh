#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_APPS_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_APPS_PATH}"/internal/helper.zsh
}

apps::internal::main::factory
