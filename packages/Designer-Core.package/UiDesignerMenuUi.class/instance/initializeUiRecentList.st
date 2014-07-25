ui - private
initializeUiRecentList
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	recentList := UiListWidget new.
	recentList extent: (192@106).
	recentList position: (34@136).
	recentList hResizing: (#spaceFill).
	recentList vResizing: (#spaceFill).
	recentList minWidth: (2).
	recentList minHeight: (2).
	recentList cellInset: (0).
	recentList cellPositioning: (#center).
	recentList cellSpacing: (#none).
	recentList layoutInset: (0).
	recentList listCentering: (#topLeft).
	recentList listDirection: (#topToBottom).
	recentList listSpacing: (#none).
	recentList maxCellSize: (1073741823).
	recentList minCellSize: (0).
	recentList wrapCentering: (#topLeft).
	recentList wrapDirection: (#none).
	recentList frameFractions: (0@0 corner: 1@1).
	recentList frameOffsets: (0@0 corner: 0@0).
	recentList balloonText: (nil).
	recentList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	recentList widgetResizable: (true).
	recentList horizontalScrollBarPolicy: (#alwaysOff).
	recentList verticalScrollBarPolicy: (#asNeeded).
	recentList outerBorderWidth: (0).
	recentList scrollBarThickness: (9).
	recentList modelClass: (UiPropertyItemNode).
	recentList horizontalHeaderVisible: (false).
	recentList verticalHeaderVisible: (false).
	recentList selectionBehavior: (#selectRows).
	recentList selectionMode: (UiViewSingleSelection).
	recentList listOrientation: (#default).
	recentList hAlignment: (#left).
	recentList vAlignment: (#top).
	recentList setProperty: #objectName toValue: 'recentList'.
	^ recentList