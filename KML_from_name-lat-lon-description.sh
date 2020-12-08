#!/bin/bash
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
