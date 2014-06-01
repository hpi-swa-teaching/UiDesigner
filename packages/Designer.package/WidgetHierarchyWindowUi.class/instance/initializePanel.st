ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (200@300).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	treeView := UiTreeView new.
	treeView extent: (192@292).
	treeView position: (4@4).
	treeView hResizing: (#spaceFill).
	treeView vResizing: (#spaceFill).
	treeView minWidth: (2).
	treeView minHeight: (2).
	treeView cellInset: (0).
	treeView cellPositioning: (#center).
	treeView cellSpacing: (#none).
	treeView layoutInset: (0).
	treeView listCentering: (#topLeft).
	treeView listDirection: (#topToBottom).
	treeView listSpacing: (#none).
	treeView maxCellSize: (1073741823).
	treeView minCellSize: (0).
	treeView wrapCentering: (#topLeft).
	treeView wrapDirection: (#none).
	treeView frameFractions: (0@0 corner: 1@1).
	treeView frameOffsets: (0@0 corner: 0@0).
	treeView balloonText: (nil).
	treeView balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	treeView widgetResizable: (false).
	treeView horizontalScrollBarPolicy: (#asNeeded).
	treeView verticalScrollBarPolicy: (#asNeeded).
	treeView outerBorderWidth: (0).
	treeView scrollBarThickness: (9).
	treeView modelClass: (nil).
	treeView horizontalHeaderVisible: (true).
	treeView verticalHeaderVisible: (false).
	treeView selectionBehavior: (#selectRows).
	treeView selectionMode: (UiViewSingleSelection).
	treeView setProperty: #objectName toValue: 'treeView'.
	panel addChild: treeView.
	panel setProperty: #uiClassName toValue: 'WidgetHierarchyWindow'.