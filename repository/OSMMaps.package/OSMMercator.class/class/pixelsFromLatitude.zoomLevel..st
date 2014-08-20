converting
pixelsFromLatitude: aLatitude zoomLevel: zoomLevel 
	| sinLat log maxPixel yPixel |
	"See LatToY from OsmMercator.java"
	
	"MercatorWeb works in the -85° to 85° range"
	aLatitude < self minLatitude
		ifTrue: [ aLatitude := self minLatitude ].
		
	aLatitude > self maxLatitude
		ifTrue: [ aLatitude := self maxLatitude ].
	
	sinLat := aLatitude degreesToRadians sin.
	log := ((1 + sinLat) / (1 - sinLat)) ln.
	maxPixel := self maxPixelForZoomLevel: zoomLevel.
	yPixel := maxPixel * (0.5 - (log / (4.0 *  Float pi))).

	 ^ yPixel min: (maxPixel - 1).