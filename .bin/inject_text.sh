#!/usr/bin/env bash
# inject_text.sh - Prints a file, looking for a template block, executing it and returning the results in-line
#
# Usage:
#   1. When you run 'inject_text.sh FILE', FILE will be opened and printed line by line,
#      until an embed block is found. 
#   2. A line '__START_EMBED_CONTENT__' on its own starts the embed block.
#   3. Any subsequent lines should be a shell script to execute.
#   4. A line with only '__END_EMBED_CONTENT__' ends the collection of commands.
#      At that point the command is executed and its stdout is collected.
#      That is then printed to the screen.
#   5. The rest of the processing continues as before.

set -u
[ "${DEBUG:-0}" = "1" ] && set -x

_info () { printf "$(basename "$0"): Info: %s\n" "$*" 1>&2 ; }

_err () { printf "$(basename "$0"): Error: %s\n" "$*" 1>&2 ; }

_process_content () {
    local gather_content=0
    local -a content_tmpl=()
    while IFS= read -r line ; do
        if [ "$line" = "__START_EMBED_CONTENT__" ] ; then
            gather_content=1
            continue
        elif [ "$line" = "__END_EMBED_CONTENT__" ] ; then
            gather_content=0
            # If I wrap the array in quotes, it'll be executed verbatim rather than
            # interpolated as a script, so leave this crappy for now
            results="$( ${content_tmpl[@]} )"
            result_code=$?
            if [ "$result_code" -ne 0 ] ; then
                _err "Tried to execute embed:"
                _err "${content_tmpl[@]}"
                _err "Executed embed failed; result code was non-zero ($result_code)"
                exit 1
            fi
            printf "%s\n" "$results"
            content_tmpl=()
            continue
        elif [ "$gather_content" -eq 1 ] ; then
            content_tmpl+=("$line")
        else
            printf "%s\n" "$line"
        fi
    done
}
_process_content_files () {
    for file in "$@" ; do
        dir="$(dirname "$file")"
        _info "Processing file '$file' ..."
        (
            cd "$dir"
            _process_content
        ) <"$file"
    done
}


if [ $# -gt 0 ] ; then
    _process_content_files "$@"
else
    _process_content
fi
