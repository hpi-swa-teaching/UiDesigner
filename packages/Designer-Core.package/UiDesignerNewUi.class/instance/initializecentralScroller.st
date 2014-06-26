ui - private
initializecentralScroller
		
	
	| centralScroller |
	centralScroller := UiScrollArea new.
	centralScroller extent: (416@553).
	centralScroller position: (184@42).
	centralScroller hResizing: (#spaceFill).
	centralScroller vResizing: (#spaceFill).
	centralScroller minWidth: (2).
	centralScroller minHeight: (2).
	centralScroller cellInset: (0).
	centralScroller cellPositioning: (#center).
	centralScroller cellSpacing: (#none).
	centralScroller layoutInset: (0).
	centralScroller listCentering: (#topLeft).
	centralScroller listDirection: (#topToBottom).
	centralScroller listSpacing: (#none).
	centralScroller maxCellSize: (1073741823).
	centralScroller minCellSize: (0).
	centralScroller wrapCentering: (#topLeft).
	centralScroller wrapDirection: (#none).
	centralScroller frameFractions: (0.23@0 corner: 0.75@1).
	centralScroller frameOffsets: (0@0 corner: 0@0).
	centralScroller balloonText: (nil).
	centralScroller balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	centralScroller widgetResizable: (false).
	centralScroller horizontalScrollBarPolicy: (#asNeeded).
	centralScroller verticalScrollBarPolicy: (#asNeeded).
	centralScroller outerBorderWidth: (0).
	centralScroller scrollBarThickness: (9).
	centralScroller setProperty: #objectName toValue: 'centralScroller'.
	^ centralScroller.