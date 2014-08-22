# OpenStreetMap for Pharo and Roassal

OSMMaps is a *very* simple wrapper around OpenStreetMaps.

It lets you open a Morph showing a map.

![map opened on the city of Mons, Belgium](/screenshot.png "City of Mons")

## Roassal Example

The easiest way to get started is to load Roassal2 and use the following:


    originalX := 8365.
    originalY := 5522.
    tiles := OrderedCollection new.
    (0 to: 10) do: [:yIndex |
      (0 to: 10) do: [ :xIndex |
        tiles add: (OSMTile new
          zoomLevel: 14;
          x: originalX + xIndex;
          y: originalY + yIndex)
        ]].

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
      lineItemsCount: [ 11 ];
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
    "v canvas open"
    v


## TODO

- Convert lat/lng for a zoom level into tile coordinates
- Detect click on the map and display lat/lng
- Implement zoom in the Roassal visualization
