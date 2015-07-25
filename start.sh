#!/bin/bash

echo "Starting Evernote"
echo "Wine version"
wine --version

WINEDLLOVERRIDES="mshtml,mscoree=" wineboot -u
wine /usr/src/evernote.exe &

while(true)
do
    echo "Evernote is running"
    sleep 600
done
