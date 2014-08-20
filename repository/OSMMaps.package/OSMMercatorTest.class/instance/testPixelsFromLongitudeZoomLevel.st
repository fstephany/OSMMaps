tests
testPixelsFromLongitudeZoomLevel
	"City of Mons -> lat: 50.45, lng: 3.95
	https://c.tile.openstreetmap.org/14/8371/5524.png"
	self assert: (OSMMercator pixelsFromLongitude: 3.95  zoomLevel: 14) equals: 2.1431728355555553e6
