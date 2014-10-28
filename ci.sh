#!/bin/bash
set -e

if [ -z "$PROJECT_ROOT_DIR" ]; then
   PROJECT_ROOT_DIR="."
fi

source ${PROJECT_ROOT_DIR}/ci_setup.sh

bundle install

bundle exec rake "$@"
