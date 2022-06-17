#!/bin/bash

# Derived from https://github.com/crate/crate-python/blob/0.27.0/devtools/setup_ci.sh

set -e

function args() {
  options=$(getopt --long sqlalchemy-version: -- "$@")
  [ $? -eq 0 ] || {
    echo "Incorrect options provided"
    exit 1
  }
  eval set -- "$options"
  while true; do
      case "$1" in
      --sqlalchemy-version)
          shift;
          sqlalchemy_version=$1
          ;;
      --)
          shift
          break
          ;;
      esac
      shift
  done
}

function main() {

  # Read command line arguments.
  args $0 "$@"

  # Sanity checks.
  [ -z ${sqlalchemy_version} ] && {
    echo "--sqlalchemy-version must be given"
    exit 1
  }

  # Let's go.
  echo "Invoking tests with SQLAlchemy ${sqlalchemy_version}"

  python -m pip install --upgrade pip

  pip install --upgrade wheel
  pip install "zc.buildout>=2,<3"

  buildout -vv -n -c base.cfg

}

main "$@"
