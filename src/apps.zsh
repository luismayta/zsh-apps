#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function apps::jira::install {
    mkdir -p /Applications/Jira.app
    cd /var/tmp/ || cd - && \
            nativefier --name "Jira" \
                       --internal-urls ".*?\.atlassian\.*?" \
                       --icon jira/jira.png --single-instance \
                       "https://endustria.atlassian.net/secure/RapidBoard.jspa" && \
            rsync -a ./Jira-darwin-x64/Jira.app/ /Applications/Jira.app/ && cd - || exit
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
