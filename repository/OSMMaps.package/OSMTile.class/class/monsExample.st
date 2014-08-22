roassal2 examples
monsExample
	"self monsExample"
	| cityOfMons radius tiles v emptyForm s elements visibleInteraction |
	cityOfMons := OSMTile withLatitude: 50.45 longitude: 3.95 zoomLevel: 14.
	radius := 10.
	tiles := cityOfMons tilesAround: radius.

	v := RTView new.
	v @ RTDraggableView.

	"We first create elements on an empty form"
	emptyForm := ColorForm extent: 256 @ 256 depth: 32.
	s := RTBitmap new form: emptyForm.
	elements := s elementsOn: (1 to: tiles size).

	"We add all the elements to the view"
	v addAll: elements.


	"We do the layout with a gap, for the purpose of the demo"
	RTGridLayout new 
	  "beware, this does NOT work on boundaries!"
	  lineItemsCount: [ (radius * 2) + 1 ];
	  gapSize: 0; 
	  on: elements.

	"We define an interaction to capture the exact moment an element is visible or invisible"
	visibleInteraction := RTVisible new.
	visibleInteraction visibleBlock: [ :element |
	  | tile |
	  tile := tiles at: element model.
	  Transcript show: 'refresh'; cr.
	  element trachelShape form: tile image.
	  element signalUpdate ].
	elements @ visibleInteraction.

	"To make sure if we drag and drop a form, the view get translated"
	elements @ RTEventForwarder.
	v canvas camera focusOnCenter.
	v canvas openInWindowSized: 600@600 titled: 'Mons - OpenStreetMap'.