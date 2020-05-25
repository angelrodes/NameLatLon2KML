#!/bin/bash
#
# NameLatLon2KML
#
# Angel Rodes, 2020
#
# This script get the Name, Latitude and Longitude columns form the clipboard and write a KML file using this data. The KML file is opened with the default program, usually Google Earth
# 
# Requirements:
#   - xsel
#   - Googel Earth
#
# Usage: Just copy 3 columns of data containing site or sample names (NO SPACES), latitudes and longitudes and run the script. Google Earth should show the sites.

# Get data from clipboard
xsel --clipboard > input.txt

# Write kml file
echo "<?xml version=\"1\" encoding=\"utf-8\"?><kml xmlns=\"http://earth.google.com/kml/2.1\"><Document>">output.kml
while read line; do
  NAME=$(echo $line | awk '{print $1}')
  LAT=$(echo $line | awk '{print $2}' | sed 's/,/\./g'|grep "^[0-9]*.[0-9]*$")
  LON=$(echo $line | awk '{print $3}' | sed 's/,/\./g'|grep "^[0-9]*.[0-9]*$")

  if [ ! -z "$LAT$LON" ]
  then
      echo "<Placemark><name>$NAME</name><Point><coordinates>$LON,$LAT,0</coordinates></Point></Placemark>">>output.kml
  fi

done < input.txt
echo "</Document></kml>">>output.kml

# Open kml
xdg-open output.kml
