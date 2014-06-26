ui - private
initializeunnamedMorph5
		
	
	| unnamedMorph5 |
	unnamedMorph5 := UiLabel new.
	unnamedMorph5 changeTableLayout.
	unnamedMorph5 extent: (16@16).
	unnamedMorph5 position: (434@11).
	unnamedMorph5 hResizing: (#shrinkWrap).
	unnamedMorph5 vResizing: (#shrinkWrap).
	unnamedMorph5 minWidth: (2).
	unnamedMorph5 minHeight: (2).
	unnamedMorph5 cellInset: (0).
	unnamedMorph5 cellPositioning: (#center).
	unnamedMorph5 cellSpacing: (#none).
	unnamedMorph5 layoutInset: (0).
	unnamedMorph5 listCentering: (#topLeft).
	unnamedMorph5 listDirection: (#leftToRight).
	unnamedMorph5 listSpacing: (#none).
	unnamedMorph5 maxCellSize: (1073741823).
	unnamedMorph5 minCellSize: (0).
	unnamedMorph5 wrapCentering: (#topLeft).
	unnamedMorph5 wrapDirection: (#none).
	unnamedMorph5 frameFractions: (0@0 corner: 1@1).
	unnamedMorph5 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph5 balloonText: (nil).
	unnamedMorph5 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph5 text: ('Label').
	unnamedMorph5 setProperty: #formByDesigner toValue: 'UiSilkIcons packageIcon'.
	unnamedMorph5 form: (UiSilkIcons packageIcon).
	^ unnamedMorph5.