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
}

apps::internal::main::factory

if ! core::exists curl; then  core::install curl; fi
if ! core::exists rsync; then core::install rsync; fi
if ! core::exists node; then core::install node; fi
if ! core::exists yarn; then core::install yarn; fi
if ! core::exists nativefier; then core::install nativefier; fi