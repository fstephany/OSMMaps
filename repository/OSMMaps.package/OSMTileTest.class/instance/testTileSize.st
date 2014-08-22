testing
testTileSize
	| tile |
	tile := OSMTile new.
	self assert: tile tileSize equals: 256.