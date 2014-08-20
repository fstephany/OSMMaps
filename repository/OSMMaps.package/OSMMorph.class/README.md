tile := OSMTile new zoomLevel: 14; x: 8371; y: 5524.
tile2 := OSMTile new zoomLevel: 14; x: 8372; y: 5524.
tile3 := OSMTile new zoomLevel: 14; x: 8373; y: 5524.

osm := OSMMorph new.
osm layoutPolicy: RowLayout new.
osm addAllMorphs: {tile image asMorph .tile2 image asMorph . tile3 image asMorph }.
osm openInWindow.

OSMMorph mons openInWindow.


tile image asMorph openInWindow.