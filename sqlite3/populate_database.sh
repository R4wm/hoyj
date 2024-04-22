#!/bin/bash

#populate all the mp3 files into database
media_location='/mnt/media_storage/media'
for i in $(find $media_location -iname "*.mp3" -print)
do
    echo "This is file: $i"
done



