instance creation
mons
	| morph |	
	morph := self new.
	morph firstTile: (OSMTile new zoomLevel: 14; x: 8371; y: 5524).
	^morph.