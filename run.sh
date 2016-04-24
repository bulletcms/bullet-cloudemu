#!/usr/bin/env bash

# gcloud beta emulators datastore start --project bullet-sabot-test --data-dir "$PWD/store" --store-on-disk True --host-port localhost:6000

# BELOW IS TEMPORARY
set -e

if [ "$EUID" -ne 0 ]; then
  echo "This script uses functionality which requires root privileges"
  exit 1
fi

if ! [ -e "$PWD/store" ]; then
  ./grpc/gcd.sh create store
fi

./grpc/gcd.sh start store
