testing
testWithLatitudeLongitudeZoomLevel
	| tile |
	"Mons map at zoomLevel 14:
	https://tools.wmflabs.org/geohack/geohack.php?pagename=Mons&params=50_27_N_03_57_E_type:city%2893072%29_region:BE
	"
	tile := OSMTile withLatitude: 50.45 longitude: 3.95 zoomLevel: 14.

	self assert: tile x equals: 8371.
	self assert: tile y equals: 5524.
	self assert: tile zoomLevel equals: 14.