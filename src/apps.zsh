#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::jira::install {
    rm -rf /Applications/Jira.app && mkdir -p /Applications/Jira.app
    cd /var/tmp/ || cd - && \
            nativefier --name "Jira" \
            --internal-urls "accounts.google.com|id.atlassian.com|endustria.atlassian.net" \
            --full-screen --disable-dev-tools --single-instance \
           "https://endustria.atlassian.net/secure/BrowseProjects.jspa" &&
            rsync -azvhP --remove-source-files ./Jira-darwin-x64/Jira.app/ /Applications/Jira.app/ && cd - || exit
}

function apps::calendar::install {
    local name url
    name="GoogleCalendar"
    url="https://calendar.google.com/calendar/r"
    apps::utils::native:make "${name}" "${url}"
}

function apps::translate::install {
    local name url
    name="GoogleTranslate"
    url="https://translate.google.com"
    apps::utils::native:make "${name}" "${url}"
}

function apps::medium::install {
    local name url
    name="Medium"
    url="https://medium.com"
    apps::utils::native:make "${name}" "${url}"
}
