testing
testTilesAroundNearBounds
	| tile tilesAround |
	tile := OSMTile new
		zoomLevel: 14;
		x: 10;
		y: 5.
		
	tilesAround := tile tilesAround: 15.
	self assert: tilesAround first x equals: 0.
	self assert: tilesAround first y equals: 0.
	self assert: tilesAround last x equals: 10 + 15.
	self assert: tilesAround last y equals: 5 + 15.