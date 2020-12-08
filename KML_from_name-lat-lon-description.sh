#!/bin/bash
# KML_from_name-lat-lon-description
#
# Angel Rodes, 2020
#
# This script get the Name, Latitude, Longitude mand Hidden text columns form the clipboard and write a KML file using this data. The KML file is opened with the default program, usually Google Earth
# 
# Requirements:
#   - xsel
#   - Googel Earth
#
cd ~
PORTAPAPELES=$(xsel --clipboard)
xsel --clipboard |sed 's/ /_/g' |sed 's/\t/ /g' | grep -v '^ *$' > ~/clipboard.txt
echo "-------------------"
echo "clipboard.txt saved in your home folder:"
cat ~/clipboard.txt
kmlstring=$(echo "<?xml version=\"1\" encoding=\"utf-8\"?><kml xmlns=\"http://earth.google.com/kml/2.1\"><Document> $(cat ~/clipboard.txt | sed 's|^\(.*\) \(.*\) \(.*\) \(.*$\)|<Placemark><name>\1</name><description>\4</description><Point><coordinates>\3,\2,0</coordinates></Point></Placemark>|'|sed 's/_/ /g') </Document></kml>")
echo $kmlstring > ~/clipboard.kml
echo "-------------------"
echo "clipboard.kml saved in your home folder:"
cat ~/clipboard.kml
echo "-------------------"
echo "opening with xdg-open"
xdg-open ~/clipboard.kml
sleep 60s
