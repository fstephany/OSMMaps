converting
latitudeFromPixels: pixel zoomLevel: zoomLevel 
	| actualPixel temp latitude |
	actualPixel := pixel + (self falseNorthingForZoomLevel: zoomLevel).
	temp := (-1.0 * actualPixel / (self radiusOfZoomLevel: zoomLevel)) exp.
      latitude := (Float pi / 2) - (2 * temp arcTan).
      ^ -1 * latitude radiansToDegrees.