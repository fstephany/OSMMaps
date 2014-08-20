as yet unclassified
urlForTile: tile
	^self baseURL
		addPathSegment: tile zoomLevel asString;
		addPathSegment: tile x asString;
		addPathSegment: tile y asString , '.png' .