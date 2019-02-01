#!/bin/sh

set -eu

cd client

NG_CONFIGURATION="hmr"
if [ ! -z ${API_URL+x} ]; then
  ./src/environments/environment.dynamic.sh
  NG_CONFIGURATION="dynamic"
fi

npm run ng -- serve --proxy-config proxy.config.json --hmr --configuration $NG_CONFIGURATION --host 0.0.0.0 --disable-host-check --port 3000
