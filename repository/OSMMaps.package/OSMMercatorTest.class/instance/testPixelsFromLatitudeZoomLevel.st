tests
testPixelsFromLatitudeZoomLevel
	"we cannot go out of bounds"
	self assert: (OSMMercator pixelsFromLatitude: 100  zoomLevel: 1) equals: (OSMMercator maxLatitude).

	"City of Mons -> lat: 50.45, lng: 3.95
	https://c.tile.openstreetmap.org/14/8371/5524.png"
	self assert: (OSMMercator pixelsFromLatitude: 50.45  zoomLevel: 14) equals: 1.4142813143675001e6.
