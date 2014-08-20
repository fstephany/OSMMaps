as yet unclassified
createSubMorphs
	| originX originY container |
	container := Morph new 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
 		wrapCentering: #topLeft;
 		wrapDirection: #topToBottom;
		width: 256*2;
  		height: 256*2.
		
	originX := firstTile x.
	originY := firstTile y.
	
	(0 to: 1) do: [:row |
		(0 to: 1) do: [:column |
			| currentTile |
			currentTile := (OSMTile new 
				zoomLevel: firstTile zoomLevel;
				x: (originX + column);
				y: (originY + row )).
			container addMorphBack: currentTile image asMorph]].
	
	self addMorph: container
	