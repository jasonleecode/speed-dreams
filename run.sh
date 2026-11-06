#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
install_dir="$project_dir/build/install"
export LD_LIBRARY_PATH="$project_dir/build/deps/usr/lib/x86_64-linux-gnu:$install_dir/lib64/games/speed-dreams-2/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

exec "$install_dir/games/speed-dreams-2" "$@"
