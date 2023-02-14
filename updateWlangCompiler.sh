#!/bin/bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "This script should be sourced using the \`source\` command."
  exit 1
fi

pushd /home/runner/WlangBlog

# Delete the old version
rm -rf wlang
# Clone the latest version
git clone https://github.com/DanteFalzone0/wlang.git
# Go into the repository directory
pushd wlang
npm install
npm run build
alias wlc='node /home/runner/WlangBlog/wlang/dist/main.js'

# exit the wlang compiler repo
popd

# go back to wherever we were when this script started
popd
