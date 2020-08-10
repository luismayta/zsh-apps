#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# name_path
# url
# architecture
function apps::utils::native:make {
    local name name_path url
    name="${1}"
    url="${2}"
    name_path="${APPS_APPLICATION_PATH}/${name}.app"
    rm -rf "${name_path}" && mkdir -p "${name_path}"
    cd /var/tmp/ || cd - && \
            nativefier --name "${name}" \
                --full-screen --disable-dev-tools --single-instance \
                       "${url}" && \
            rsync -azvhP --remove-source-files ./"${name}"-"${APPS_ARCHITECTURE_NAME}"/"${name}".app/ "${name_path}/" && cd - || exit
}
