instance creation
withLatitude: latitude longitude: longitude zoomLevel: zoomLevel 
	| rawX rawY tileSize |
	tileSize := 256.
	rawX := OSMMercator pixelsFromLongitude: longitude zoomLevel: zoomLevel.
	rawY := OSMMercator pixelsFromLatitude: latitude zoomLevel: zoomLevel.

	^self new
		x: (rawX / tileSize) truncated;
		y: (rawY / tileSize) truncated;
		zoomLevel: zoomLevel.