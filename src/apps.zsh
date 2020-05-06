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
    local name name_path
    name="GoogleCalendar"
    name_path="/Applications/${name}.app"
    mkdir -p "${name_path}"
    cd /var/tmp/ || cd - && \
            nativefier --name "${name}" \
                       --single-instance \
                       "https://calendar.google.com/calendar/r" && \
            rsync -a ./"${name}"-darwin-x64/"${name}".app/ "${name_path}/" && cd - || exit
}
