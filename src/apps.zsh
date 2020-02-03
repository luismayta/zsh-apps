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
