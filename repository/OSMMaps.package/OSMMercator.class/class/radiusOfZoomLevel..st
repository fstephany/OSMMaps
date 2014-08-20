accessing
radiusOfZoomLevel: zoomLevel 
	^self tileSize * (2** zoomLevel) / (2 * Float pi)