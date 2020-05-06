#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "it's neccesary brew, add: luismayta/zsh-brew"
        return
    fi
    message_info "Installing rsync for ${APPS_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${APPS_PACKAGE_NAME}"
}

function apps::node::install {
    if ! type nvm > /dev/null; then
        message_warning "is Neccesary install nvm, please install antibody bundle luismayta/zsh-nvm branch:develop"
        return
    fi
    message_info "Install version of node"
    nvm install --lts
    nvm use --lts --default
    message_success "Install version of node"
}

function apps::yarn::install {
    message_info "Installing yarn"
    curl -o- -L https://yarnpkg.com/install.sh | bash
    message_success "Installed yarn"
}

function apps::nativefier::install {
    message_info "Installing natifier"
    yarn global add nativefier
    message_success "Installed natifier"
}

function apps::has_node {
    if ! type -p node > /dev/null; then
        echo 0
        return
    fi
    echo 1
}

function apps::has_yarn {
    if ! type -p yarn > /dev/null; then
        echo 0
        return
    fi
    echo 1
}

function apps::has_nativefier {
    if ! type -p nativefier > /dev/null; then
        echo 0
        return
    fi
    echo 1
}

function apps::has_dependences {
    if [ "$(apps::has_yarn)" -eq 1 ] && [ "$(apps::has_node)" -eq 1 ]; then
        echo 1
        return
    fi
    return
}

if ! type -p rsync > /dev/null; then apps::rync::install; fi
if [ "$(apps::has_node)" -eq 0 ]; then apps::node::install; fi
if [ "$(apps::has_yarn)" -eq 0 ]; then apps::yarn::install; fi
if [ "$(apps::has_nativefier)" -eq 0 ]; then apps::nativefier::install; fi
