# Maya : Dynamic map

## Usage
* Map of the Ancient Maya civilization
* Protoype of an experience for the Maya - Hidden Worlds Revealed exhibit

## About
This repo primarily consists of data and TileMile styles.

I am ignoring the Layers folder for now, until I can figure out a better way to track that sort of data in Git

## Incomplete install instructions

### Import data into PostGIS

Install PostGIS (not covered here, but maybe we can add some links)

Install QGis

In QGis > Plugins > Manage plugins

Enable the SPIT Shapefile to PostgreSQL/PostGIS Import Tool plugin by clicking the plugin.

Database > SPIT > Import Shapefiles to PostgreSQL

Either select an existing database connection or setup a new one. If making a new one, you should check the "also list tables with no geometry" checkbox. Test the connection.

You can keep the default values for geometry column and SRID, even though your SRID is 4326 for WGS84. I think the default of -1 makes the system detect the SRID on its own. ?? Either way this works.

Click the Add button and navigate to the shapefile you saved before. The click OK.

The Shapefile conversion process truncates the database names incorrectly. To fix this run the included psql update file:

```sh
psql -d maya-sites -f data/db_cleanup.psql
```
