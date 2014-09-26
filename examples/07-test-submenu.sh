#!/usr/bin/env bash

# The next three lines are for the go shell.
export SCRIPT_NAME="test-submenu"
export SCRIPT_HELP="Mimic a submenu."
[[ "$GOGO_GOSH_SOURCE" -eq 1 ]] && return 0

# Normal script execution starts here.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GOSH_SCRIPTS="$DIR"/submenu \
    GOSH_PROMPT="submenu gosh (?|#)> " \
    $GOSH_PATH $@
exit 0

