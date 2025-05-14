#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::upgrade {
    message_warning "method not implement"
}

function apps::packages::install {
  apps::internal::packages::install
}
