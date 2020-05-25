# NameLatLon2KML
Plot data from a spreadsheet (Name-Latitude-Longitude columns) in Google Earth.

Angel Rodes, 2020

NameLatLon2KML is the simplest and fastest tool to plot in Google Earth a set of locations from a spreadsheet like this one:

Name	Latitude	Longitude
----	--------	---------
STA01	42.46778	0.71306
SMV01	42.48611	0.71583
TIN01	42.49111	0.72472
ART01	42.54833	0.76028
ART02	42.54750	0.75972
BLL03	42.56000	0.71917
RLH01	42.59806	0.76333
IST01	42.61250	0.76556
IST02	42.61250	0.76528
HOS03	42.62556	0.76528
MUL01	42.63000	0.74611
MUL04	42.62972	0.74500
OPN01	42.63639	0.74000
OPN02	42.63639	0.74056
OPN03	42.63639	0.74083
IPN01	42.64028	0.73861
IPN02	42.64028	0.73833
OBS01	42.60444	0.78639
BES01	42.60417	0.80611
LDB01	42.60528	0.82222
LDB03	42.60528	0.82250

This script works in Linux. You need to have Google Earth (or any other program that reads kml files) and xsel for the script to read the clipboard.
Just open your spreadsheet, copy the Name-Lat-Lon columns and run the script. Google Earth will magically open and show you the sites.
Site names should not contain spaces.
