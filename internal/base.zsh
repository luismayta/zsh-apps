#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# name_path
# url
# architecture
function apps::internal::native::make {
    local name name_path url
    name="${1}"
    url="${2}"
    name_path="${APPS_APPLICATION_PATH}/${name}.app"
    rm -rf "${name_path}" && mkdir -p "${name_path}"
    nativefier "${url}" \
                "${APPS_PATH_TMP}/${name}-${APPS_ARCHITECTURE_NAME}/${name}".app/ \
                --name "${name}" \
                --internal-urls "accounts.google.com" \
                --full-screen --disable-dev-tools --single-instance \
                        && \
            rsync -azvhP --remove-source-files "${APPS_PATH_TMP}/${name}-${APPS_ARCHITECTURE_NAME}/${name}".app/ "${name_path}/"
}

# url
function apps::internal::jira::install {
    local name name_path url
    name="Jira"
    url="${1}"
    name_path="${APPS_APPLICATION_PATH}/${name}.app"
    rm -rf "${name_path}" && mkdir -p "${name_path}"
    nativefier "${url}" \
                "${APPS_PATH_TMP}/${name}-${APPS_ARCHITECTURE_NAME}/${name}".app/ \
                --name "${name}" \
                --internal-urls "accounts.google.com" \
                --full-screen --disable-dev-tools --single-instance \
                        && \
            rsync -azvhP --remove-source-files "${APPS_PATH_TMP}/${name}-${APPS_ARCHITECTURE_NAME}/${name}".app/ "${name_path}/"
}

function apps::internal::devdocs::install {
    local name url
    name="DevDocs"
    url="https://devdocs.io"
    apps::internal::native::make "${name}" "${url}"
}

function apps::internal::calendar::install {
    local name url
    name="GoogleCalendar"
    url="https://calendar.google.com/calendar/u/0/r"
    apps::internal::native::make "${name}" "${url}"
}

function apps::internal::translate::install {
    local name url
    name="GoogleTranslate"
    url="https://translate.google.com"
    apps::internal::native::make "${name}" "${url}"
}

function apps::internal::medium::install {
    local name url
    name="Medium"
    url="https://medium.com"
    apps::internal::native::make "${name}" "${url}"
}
