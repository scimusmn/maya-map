# Data notes

## KML
The KML (Google Earth, Keyhole Markup Language) files are a copy of the original data from [Drs. Brown and Witschey's public Electronic Atlas of Ancient Maya Sites](http://mayagis.smv.org/google_earth_data.htm).

## CSV
The CSV (Comma Seperated Values) are derived from the KML with some data cleanup and added time data.

### Data cleanup
* Double spaces and stray quotes removed
* Commas in data fields have been converted to semicolons to prevent problems when parsing CSV into a PostGIS database
* Description field broken up into city, municipality, and country

### New data - time
To create the Dynamic Map we needed to add some time data to the various Maya settlement location. Focusing on the largest sites, where good evidence exists, we broke inhabitence of a location into these time frames.
* Early Preclassic 2000 BC – 1000 BC
* Middle Preclassic 1000 BC – 400 BC
* Late Preclassic	400 BC – AD 100
* Early classic	250 AD - 600 AD
* Late Classic 600 AD - 800 AD
* Terminal Classic 800AD - 900 AD
* Early Postclassic	900 AD - 1200 AD
* Late Postclassic 1200 AD - 1519 AD
* Post Conquest 1520 AD - 1697 AD

Each location with time data also has a field indicating whether this time data has been checked once or twice. The second check was done by someone more familiar with the current research into the Maya. Regardless these classifications should be seen as loose estimates at best. Please submit pull requests or contact us if you notice problems in our time estimates.

## SHP
These files are simply the CSV data converted into ESRI Shapefiles. We use the Shapefiles via QGis to create the PostGIS database from this data.
