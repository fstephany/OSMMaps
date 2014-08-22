bitmap
image
	^image ifNil: [ 
		Transcript cr; show: 'Downloading tile...'.
		image := ZnEasy getPng: (self source urlForTile: self).
		Transcript show: 'Done'.
		image].