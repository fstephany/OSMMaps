tests
testLatitudeFromPixelsZoomLevel
	"City of Mons -> lat: 50.45, lng: 3.95"
	| difference |
	difference := (OSMMercator latitudeFromPixels: 1.4142813143675001e6 zoomLevel: 14) - 50.45.
	
	self assert: difference abs < 0.01.
