ui - private
initializewidgetList
		
	
	| widgetList |
	widgetList := UiTreeView new.
	widgetList extent: (184@527).
	widgetList position: (0@42).
	widgetList hResizing: (#spaceFill).
	widgetList vResizing: (#spaceFill).
	widgetList minWidth: (2).
	widgetList minHeight: (2).
	widgetList cellInset: (0).
	widgetList cellPositioning: (#center).
	widgetList cellSpacing: (#none).
	widgetList layoutInset: (0).
	widgetList listCentering: (#topLeft).
	widgetList listDirection: (#topToBottom).
	widgetList listSpacing: (#none).
	widgetList maxCellSize: (1073741823).
	widgetList minCellSize: (0).
	widgetList wrapCentering: (#topLeft).
	widgetList wrapDirection: (#none).
	widgetList frameFractions: (0@0 corner: 1@1).
	widgetList frameOffsets: (0@0 corner: 0@0).
	widgetList balloonText: (nil).
	widgetList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	widgetList widgetResizable: (false).
	widgetList horizontalScrollBarPolicy: (#asNeeded).
	widgetList verticalScrollBarPolicy: (#asNeeded).
	widgetList outerBorderWidth: (0).
	widgetList scrollBarThickness: (9).
	widgetList modelClass: (UiWidgetModel).
	widgetList horizontalHeaderVisible: (false).
	widgetList verticalHeaderVisible: (false).
	widgetList selectionBehavior: (#selectRows).
	widgetList selectionMode: (UiViewSingleSelection).
	widgetList setProperty: #objectName toValue: 'widgetList'.
	^ widgetList.