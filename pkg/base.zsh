#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::upgrade {
    message_warning "method not implement"
}

function apps::install {
    apps::internal::native::make "${1}" "${2}"
}
