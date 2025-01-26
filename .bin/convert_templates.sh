#!/usr/bin/env bash
set -eu
[ "${DEBUG:-0}" = "1" ] && set -x

while read -r file ; do
    dn="$(dirname "$file")"
    bn="$(basename "$file" .tmpl.md)"
    ./.bin/inject_text.sh "$file" > "$dn/$bn.md"
done < <(find . -type f -iname '*.tmpl.md')
