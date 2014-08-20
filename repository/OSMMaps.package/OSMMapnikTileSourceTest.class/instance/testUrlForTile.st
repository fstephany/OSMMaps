as yet unclassified
testUrlForTile
	| source tile |
	source := OSMMapnikTileSource new.
	tile := OSMTile new
		zoomLevel: 14;
		x: 8371;
		y: 5524.
	self assert: (source urlForTile: tile) asString equals: 'https://a.tile.openstreetmap.org/14/8371/5524.png'