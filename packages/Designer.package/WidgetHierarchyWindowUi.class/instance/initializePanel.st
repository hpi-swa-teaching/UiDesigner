ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (200@300).
	unnamedMorph1 position: (0@0).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#spaceFill).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#topToBottom).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	treeView := UiTreeView new.
	treeView extent: (200@300).
	treeView position: (0@0).
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
	treeView balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
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
	unnamedMorph1 addChild: treeView.
	panel addChild: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'WidgetHierarchyWindow'.