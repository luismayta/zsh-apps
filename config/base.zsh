#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export APPS_PACKAGE_NAME=apps

export APPS_IDE_TOOLS=(raycast tig meld)

export APPS_JETBRAINS=(
    jetbrains-toolbox
    intellij-idea-ce
)
export APPS_COMMUNICATION=(discord)
export APPS_KNOWLEDGE=(obsidian drawio)
export APPS_DEVOPS=(
  ngrok
  unite
  orbstack
  multipass
)

export APPS_DATABASE_CLIENTS=(
  dbeaver-community
  beekeeper-studio
  redisinsight             # GUI Redis
)

export APPS_BROWSER=(
  arc
  brave
)

export APPS_ANDROID=(
  android-studio
  android-platform-tools
  genymotion
)

export APPS_MOBILE=(
  watchman
  fastlane
)

export APPS_PROJECT_MANAGEMENT=(
  jira-cli
)

export APPS_PACKAGES=(
    "${APPS_IDE_TOOLS[@]}"
    "${APPS_JETBRAINS[@]}"
    "${APPS_COMMUNICATION[@]}"
    "${APPS_KNOWLEDGE[@]}"
    "${APPS_DEVOPS[@]}"
    "${APPS_BROWSER[@]}"
    "${APPS_ANDROID[@]}"
    "${APPS_MOBILE[@]}"
    "${APPS_DATABASE_CLIENTS[@]}"
    "${APPS_PROJECT_MANAGEMENT[@]}"
)