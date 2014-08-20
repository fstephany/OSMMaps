tests
testLongitudeFromPixelsZoomLevel
	"City of Mons -> lat: 50.45, lng: 3.95 "
	| difference |
	difference := (OSMMercator longitudeFromPixels: 2.1431728355555553e6 zoomLevel: 14) - 3.95.
	
	self assert: difference abs < 0.01.
