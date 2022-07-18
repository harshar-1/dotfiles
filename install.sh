#!/usr/bin/env bash

# these lines cause your script to fail. so you can find hidden bugs before production
set -euxo pipefail

# https://stackoverflow.com/a/53183593
YOU_ARE_HERE="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

echo $YOU_ARE_HERE