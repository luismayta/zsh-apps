#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::internal::packages::install {
    message_info "Installing required apps packages"
    for package in "${APPS_PACKAGES[@]}"; do
        core::install "${package}"
    done
    message_success "Installed required apps packages"
}