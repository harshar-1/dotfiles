#!/usr/bin/env bash

# Debug
# Added so you can find hidden bugs before production
# These lines can cause your script to fail. 
# set -euxo pipefail

# https://stackoverflow.com/a/53183593

# macOS Catalina - zsh - realpath not working
# YOU_ARE_HERE="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"


realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

YOU_ARE_HERE=$(realpath "$0")

echo $YOU_ARE_HERE