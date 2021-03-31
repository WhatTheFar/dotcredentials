#!/usr/bin/env bash

RESET=`tput sgr0`
BLUE=`tput setaf 30`

echo -e "$BLUE--- Linking .ssh ---$RESET"

rm -rf "$HOME/.ssh"
ln -sf "$(pwd)/.ssh" "$HOME"

echo -e "$BLUE--- Change file's permission ---$RESET"
# Change file's permission to be read only, except for config and known_host
find . -path "./.ssh/*" -not -name "config" -not -name "known_host*" -not -name "*.md" | xargs chmod 400

echo -e "$BLUE--- Linking .aws ---$RESET"

mkdir -p "$HOME/.aws"
ln -sf "$(pwd)/.aws/config" "$HOME/.aws/config"
ln -sf "$(pwd)/.aws/credentials" "$HOME/.aws/credentials"
