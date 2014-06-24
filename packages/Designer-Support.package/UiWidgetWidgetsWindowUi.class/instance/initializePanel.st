ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (192@595).
	panel position: (0@0).
	panel hResizing: (#spaceFill).
	panel vResizing: (#spaceFill).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (0).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	panel setProperty: #objectDescription toValue: 'This is the user interface layout for the morphic designer.'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (192@595).
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
	unnamedMorph1 frameFractions: (0@0 corner: 0.23@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	widgetList := UiTreeView new.
	widgetList extent: (180@563).
	widgetList position: (6@0).
	widgetList hResizing: (#rigid).
	widgetList vResizing: (#rigid).
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
	widgetList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
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
	unnamedMorph1 addChild: widgetList.
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (192@22).
	unnamedMorph2 position: (0@567).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (4).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (0@0 corner: 5@0).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#leftToRight).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph2 color: (Color transparent).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph3 := UiLabel new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (16@16).
	unnamedMorph3 position: (0@570).
	unnamedMorph3 hResizing: (#shrinkWrap).
	unnamedMorph3 vResizing: (#shrinkWrap).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (0).
	unnamedMorph3 cellPositioning: (#center).
	unnamedMorph3 cellSpacing: (#none).
	unnamedMorph3 layoutInset: (0).
	unnamedMorph3 listCentering: (#topLeft).
	unnamedMorph3 listDirection: (#leftToRight).
	unnamedMorph3 listSpacing: (#none).
	unnamedMorph3 maxCellSize: (1073741823).
	unnamedMorph3 minCellSize: (0).
	unnamedMorph3 wrapCentering: (#topLeft).
	unnamedMorph3 wrapDirection: (#none).
	unnamedMorph3 frameFractions: (0@0 corner: 1@1).
	unnamedMorph3 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph3 balloonText: (nil).
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph3 text: ('Label').
	unnamedMorph3 setProperty: #formByDesigner toValue: 'UiFugueIcons magnifierMediumIcon'.
	unnamedMorph3 form: (UiFugueIcons magnifierMediumIcon).
	unnamedMorph2 addChild: unnamedMorph3.
	filterEdit := UiLineEdit new.
	filterEdit extent: (167@20).
	filterEdit position: (20@568).
	filterEdit hResizing: (#spaceFill).
	filterEdit vResizing: (#rigid).
	filterEdit minWidth: (2).
	filterEdit minHeight: (2).
	filterEdit cellInset: (0).
	filterEdit cellPositioning: (#center).
	filterEdit cellSpacing: (#none).
	filterEdit layoutInset: (0).
	filterEdit listCentering: (#topLeft).
	filterEdit listDirection: (#topToBottom).
	filterEdit listSpacing: (#none).
	filterEdit maxCellSize: (1073741823).
	filterEdit minCellSize: (0).
	filterEdit wrapCentering: (#topLeft).
	filterEdit wrapDirection: (#none).
	filterEdit frameFractions: (0@0 corner: 1@1).
	filterEdit frameOffsets: (0@0 corner: 0@0).
	filterEdit balloonText: (nil).
	filterEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	filterEdit widgetResizable: (false).
	filterEdit horizontalScrollBarPolicy: (#alwaysOff).
	filterEdit verticalScrollBarPolicy: (#alwaysOff).
	filterEdit outerBorderWidth: (1).
	filterEdit scrollBarThickness: (9).
	filterEdit theText: ('').
	filterEdit readOnly: (false).
	filterEdit autoConvert: (false).
	filterEdit autoAccept: (false).
	filterEdit acceptOnFocusLost: (true).
	filterEdit scrollingMode: (#none).
	filterEdit scrollingLimit: (10).
	filterEdit helpText: ('Search...').
	filterEdit hideCursor: (true).
	filterEdit setProperty: #objectName toValue: 'filterEdit'.
	unnamedMorph2 addChild: filterEdit.
	unnamedMorph1 addChild: unnamedMorph2.
	panel addChild: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'UiWidgetWidgetsWindow'.