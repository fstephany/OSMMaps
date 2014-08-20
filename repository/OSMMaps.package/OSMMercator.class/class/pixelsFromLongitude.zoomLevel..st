converting
pixelsFromLongitude: longitude zoomLevel: zoomLevel 
	| maxPixel xLongitude |
	maxPixel := self maxPixelForZoomLevel: zoomLevel.
   xLongitude := (maxPixel * (longitude + 180)) / 360.
   ^xLongitude min: (maxPixel - 1).