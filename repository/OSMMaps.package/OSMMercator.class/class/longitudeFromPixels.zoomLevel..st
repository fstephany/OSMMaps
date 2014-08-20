converting
longitudeFromPixels: pixels zoomLevel: zoomLevel 
	^(360 * pixels / (self maxPixelForZoomLevel: zoomLevel)) - 180.0.