#/bin/bash

set -e

source hack/sh/rc.sh

export ADFINIS_CHARTS_TMP_BIN=$RUNNER_WORKSPACE/bin
mkdir -p $ADFINIS_CHARTS_TMP_BIN

# Install deps
source hack/sh/deps/helm-docs.sh
source hack/sh/deps/gomplate.sh
echo "::add-path::$ADFINIS_CHARTS_TMP_BIN"

# Set PY
echo "::set-env name=PY::$(python -c 'import hashlib, sys;print(hashlib.sha256(sys.version.encode()+sys.executable.encode()).hexdigest())')"
