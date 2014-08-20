accessing
falseNorthingForZoomLevel: zoomLevel 
	^-1 / 2 * (self maxPixelForZoomLevel: zoomLevel)