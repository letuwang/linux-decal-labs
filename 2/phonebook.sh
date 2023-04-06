#!/bin/bash

PHONEBOOK_ENTRIES="bash_phonebook_entries"

if [ "$#" -lt 1 ]; then
    exit 1

elif [ "$1" = "new" ]; then
    echo "$2 $3" >> $PHONEBOOK_ENTRIES

elif [ "$1" = "list" ]; then
    if [ ! -e $PHONEBOOK_ENTRIES ] || [ ! -s $PHONEBOOK_ENTRIES ]; then
        echo "phonebook is empty"
    else
        cat "$PHONEBOOK_ENTRIES"
    fi

elif [ "$1" = "lookup" ]; then
    while read -r entry; do
        [[ "$entry" == "$2"* ]] && echo "$entry"
    done < "$PHONEBOOK_ENTRIES"

elif [ "$1" = "remove" ]; then
    sed -i "/$2.?/d" "$PHONEBOOK_ENTRIES"

elif [ "$1" = "clear" ]; then
    echo > $PHONEBOOK_ENTRIES

else
    echo 'Invalid use'
fi