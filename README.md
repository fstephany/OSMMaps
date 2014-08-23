# OpenStreetMap for Pharo and Roassal

OSMMaps is a *very* simple wrapper around OpenStreetMaps.

![map opened on the city of Mons, Belgium](/screenshot.png "City of Mons")


## Installation

Install is quite straightforward:

    Metacello new
      baseline: 'OSMMaps';
      repository: 'github://fstephany/OSMMaps/repository';
      load.

You can add OSMMaps as a dependency on your project by adding the following
to your metacello configuration:

    spec baseline: 'OSMMaps' with: [
        spec repository: 'github://fstephany/OSMMaps/repository'].

Beware that this will load the latest version in Master.

As OSMMaps is still a moving target at this moment, there are no official
release yet. Expect to have broken stuff regularly.

## Roassal Example

Once loaded, simply execute:

    OSMTile monsExample

to open a map on top of the city of Mons. You can drag the map to navigate
around the city.


## Interesting Projects

* [http://vector-map.mapzen.com/#mapzen,40.708401305664914,-74.00626659393312,16&projection=PROJECTION_POPUP&lighting=LIGHTING_POINT&effect=EFFECT_COLOR_BLEED&building_height=1&light_azimuth=1&light_elevation=1&lightIntensity=0.7&lightAmbient=0.45&lightHeight=0.35&heightLimit=0.45&water_ocean=#bbd8f5&earth=#787878&landuse=#a4fca4&water_areas=#bbd8f5&roads=#ffffff&buildings=#a3a3a3](http://vector-map.mapzen.com/#mapzen,40.708401305664914,-74.00626659393312,16&projection=PROJECTION_POPUP&lighting=LIGHTING_POINT&effect=EFFECT_COLOR_BLEED&building_height=1&light_azimuth=1&light_elevation=1&lightIntensity=0.7&lightAmbient=0.45&lightHeight=0.35&heightLimit=0.45&water_ocean=#bbd8f5&earth=#787878&landuse=#a4fca4&water_areas=#bbd8f5&roads=#ffffff&buildings=#a3a3a3)
