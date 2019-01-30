#!/usr/bin/env bash

# Setup the development environment for a new machine.
#
#  Usage: setup.sh
#

# Currently only macOS and Ubuntu are supported.
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Install Homebrew.
  command -v brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
elif [[ -f /etc/os-release ]]; then
  . /etc/os-release
  if [[ "$NAME" == "Ubuntu" ]]; then
  fi
else
  echo "Unsupported OS detected."
  exit 1
fi
