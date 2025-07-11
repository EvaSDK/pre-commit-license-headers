#!/bin/sh
#
# Copyright (c) 2014-2016, 2018, 2020-2021 AFakeCompany Ltd
#
# Use of this source code is governed by a BSD-3-clause license that can
# be found in the LICENSE file or at https://opensource.org/licenses/BSD-3-Clause

show_help() {
    cat <<EOF
Usage: ${0##*/} [-h]

Downloads bank transaction updates in OFX format.
EOF
}

while getopts h opt ; do
    case $opt in
        h)
            echo "Help"
            exit 0
            ;;
        *)  # Generates IndentationError if parsed with Python tokenizer
            echo "Help" >&2
            exit 1
            ;;
    esac
done
