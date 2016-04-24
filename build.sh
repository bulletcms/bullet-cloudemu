#!/usr/bin/env bash
set -e

if [ "$EUID" -ne 0 ]; then
  echo "This script uses functionality which requires root privileges"
  exit 1
fi

if ! [ -e "$PWD/grpc/gcd.sh" ]; then
  wget https://storage.googleapis.com/gcd/tools/gcd-grpc-1.0.0.zip && 7z e gcd-grpc-1.0.0.zip -o"grpc" && rm gcd-grpc-1.0.0.zip
fi
