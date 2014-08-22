testing
testTilesAround
	| tile tilesAround |
	tile := OSMTile new
		zoomLevel: 14;
		x: 500;
		y: 400.
		
	tilesAround := tile tilesAround: 15.
	
	" don't forget the +1."
	self assert: tilesAround size equals: (15 * 2 + 1) squared.
	self assert: tilesAround first x equals: 500 - 15.
	self assert: tilesAround first y equals: 400 - 15.
	self assert: tilesAround last x equals: 500 + 15.
	self assert: tilesAround last y equals: 400 + 15.