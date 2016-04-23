#!/usr/bin/env bash

gcloud beta emulators datastore start --project bullet-sabot-test --data-dir "$PWD/store" --store-on-disk True --host-port localhost:6000
