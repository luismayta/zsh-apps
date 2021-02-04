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

if ! type -p curl > /dev/null; then core::curl::install; fi
if ! type -p rsync > /dev/null; then core::rsync::install; fi
if ! type -p node > /dev/null; then core::node::install; fi
if ! type -p yarn > /dev/null; then core::yarn::install; fi
if ! type -p nativefier > /dev/null; then core::nativefier::install; fi