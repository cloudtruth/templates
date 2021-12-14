#!/usr/bin/env bash

# fail fast
set -e

templates=$(cloudtruth templates list)

cloudtruth templates list | while read tname; do
    echo "Processing template: $tname"
    template=$(cloudtruth templates get "${tname}")
    directive=$(echo "$template" | head -n 1)
    if [[ "${directive}" =~ ^#~[[:space:]]*target:[[:space:]]*(.*) ]]; then
        target=${BASH_REMATCH[1]}
        echo "Writing template '$tname' to: $target"
        echo "$template" | tail -n +2 > $target
    else
        echo "No matching target directive, skipping '$tname'"
    fi
done
