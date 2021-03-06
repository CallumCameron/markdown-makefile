#!/bin/bash

function usage() {
    echo "Usage: $(basename "${0}") dict_file in_files..."
    exit 1
}

test -z "${1}" && usage
DICT_FILE="${1}"

shift

while (($#)); do
    IN_FILE="${1}"
    # Hunspell doesn't like single curly quotes
    # shellcheck disable=SC1112
    OUTPUT="$(
        perl -pe 's/(\W)‘/$1/g;s/’(\W)/$1/g;s/^‘//;s/’$//;' < "${IN_FILE}" \
        | hunspell -d en_GB -p "${DICT_FILE}" -l \
        | sort \
        | uniq)"

    if [ -n "${OUTPUT}" ]; then
        echo "Found misspelled words. Correct them or add them to the dictionary."
        echo "${OUTPUT}"
        exit 1
    fi

    shift
done

exit 0
