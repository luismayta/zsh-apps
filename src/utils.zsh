#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# name_path
# url
# architecture
function apps::utils::native:make {
    local name name_path url architecture
    name="${1}"
    url="${2}"
    architecture="${3}"
    name_path="/Applications/${name}.app"
    mkdir -p "${name_path}"
    cd /var/tmp/ || cd - && \
            nativefier --name "${name}" \
                       --single-instance \
                       "${url}" && \
            rsync -a ./"${name}"-"${architecture}"/"${name}".app/ "${name_path}/" && cd - || exit
}


