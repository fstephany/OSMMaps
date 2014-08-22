accessing
tilesAround: radius
	| neighbourhood startingX startingY |
	"this returns all the tiles that are around self.
	The radius is expressed in number of tiles"
	
	"Bound checking"
	startingX := (x - radius) max: 0.
	startingY := (y - radius) max: 0.
	
	self flag: #todo. "upper bound checking"
	
	neighbourhood := OrderedCollection new.
	(startingY to: y + radius) do: [ :yIndex |
		(startingX to: x + radius) do: [:xIndex |
			neighbourhood add: (OSMTile new
				x: xIndex;
				y: yIndex;
				zoomLevel: zoomLevel)]].

	^neighbourhood.
	
