# NameLatLon2KML
Plot data from a spreadsheet (Name-Latitude-Longitude columns) in Google Earth.

Angel Rodes, 2020
angelrodes.com

NameLatLon2KML is a simple and fast tool to plot in Google Earth a set of locations from a spreadsheet.

This script works in *Linux*. You just need to have **Google Earth** (or any other program that reads kml files) and **xsel** (for the script to read the clipboard) installed.

Just open your spreadsheet, copy the Name-Lat-Lon columns and run the script. Google Earth will magically open and show you the sites.

Site names should not contain spaces.

Label  | Latitude | Longitude
------------- | -------------  | -------------  
`Sample1` |	`28.9` |	`-82.8` 
`Sample2` |	`29.9` |	`-81.8` 
  ... | ... | ...

## KML_from_name-lat-lon-description.sh

This version allows an extra column with the text that will appear when clicking the site.

Label  | Lat | Lon | hidden text
------------- | -------------  | -------------  | -------------
 `1.3ka` |	`28.9` |	`-82.8` |	`Sample1  <br /> [Be-10]= 70000 +/- 3000 atoms/g <br /> Age(LSDn)= 1000 +/- 60 (98) years`
  `1.4ka` |	`29.9` |	`23.8` |	`Sample2  blah blah blah`
    ... | ... | ... | ...



