ui - private
initializeattributeTreeView
		
	
	| attributeTreeView |
	attributeTreeView := UiTreeView new.
	attributeTreeView extent: (200@553).
	attributeTreeView position: (600@42).
	attributeTreeView hResizing: (#spaceFill).
	attributeTreeView vResizing: (#spaceFill).
	attributeTreeView minWidth: (2).
	attributeTreeView minHeight: (2).
	attributeTreeView cellInset: (0).
	attributeTreeView cellPositioning: (#center).
	attributeTreeView cellSpacing: (#none).
	attributeTreeView layoutInset: (0).
	attributeTreeView listCentering: (#topLeft).
	attributeTreeView listDirection: (#topToBottom).
	attributeTreeView listSpacing: (#none).
	attributeTreeView maxCellSize: (1073741823).
	attributeTreeView minCellSize: (0).
	attributeTreeView wrapCentering: (#topLeft).
	attributeTreeView wrapDirection: (#none).
	attributeTreeView frameFractions: (0.75@0 corner: 1@1).
	attributeTreeView frameOffsets: (0@0 corner: 0@0).
	attributeTreeView balloonText: (nil).
	attributeTreeView balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	attributeTreeView widgetResizable: (false).
	attributeTreeView horizontalScrollBarPolicy: (#asNeeded).
	attributeTreeView verticalScrollBarPolicy: (#asNeeded).
	attributeTreeView outerBorderWidth: (0).
	attributeTreeView scrollBarThickness: (9).
	attributeTreeView modelClass: (nil).
	attributeTreeView horizontalHeaderVisible: (false).
	attributeTreeView verticalHeaderVisible: (false).
	attributeTreeView selectionBehavior: (#selectRows).
	attributeTreeView selectionMode: (UiViewSingleSelection).
	attributeTreeView setProperty: #objectName toValue: 'attributeTreeView'.
	^ attributeTreeView.