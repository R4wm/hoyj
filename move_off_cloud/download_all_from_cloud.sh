#!/bin/bash
set -e

linode-cli obj ls  | awk '{print $3}'

MEDIADIR='/mnt/new_storage/media'

cd /mnt/new_storage/media

for i in $(linode-cli obj ls  | awk '{print $3}' )
do
    for j in  $(linode-cli obj ls $i | awk '{print $4}')
    do
        echo "linode-cli obj get $i $j $MEDIADIR/$j"
        if ! [ -f "$MEDIADIR/$j" ]
        then
            linode-cli obj get "$i" "$j" "$MEDIADIR/$j"
        else
            echo ">>> $MEDIADIR/$j already exists, skipping..."
        fi
    done
done
