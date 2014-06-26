ui - private
initializeunnamedMorph6
		
	
	| unnamedMorph6 |
	unnamedMorph6 := UiLabel new.
	unnamedMorph6 changeTableLayout.
	unnamedMorph6 extent: (16@16).
	unnamedMorph6 position: (0@576).
	unnamedMorph6 hResizing: (#shrinkWrap).
	unnamedMorph6 vResizing: (#shrinkWrap).
	unnamedMorph6 minWidth: (2).
	unnamedMorph6 minHeight: (2).
	unnamedMorph6 cellInset: (0).
	unnamedMorph6 cellPositioning: (#center).
	unnamedMorph6 cellSpacing: (#none).
	unnamedMorph6 layoutInset: (0).
	unnamedMorph6 listCentering: (#topLeft).
	unnamedMorph6 listDirection: (#leftToRight).
	unnamedMorph6 listSpacing: (#none).
	unnamedMorph6 maxCellSize: (1073741823).
	unnamedMorph6 minCellSize: (0).
	unnamedMorph6 wrapCentering: (#topLeft).
	unnamedMorph6 wrapDirection: (#none).
	unnamedMorph6 frameFractions: (0@0 corner: 1@1).
	unnamedMorph6 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph6 balloonText: (nil).
	unnamedMorph6 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	unnamedMorph6 text: ('Label').
	unnamedMorph6 setProperty: #formByDesigner toValue: 'UiFugueIcons magnifierMediumIcon'.
	unnamedMorph6 form: (UiFugueIcons magnifierMediumIcon).
	^ unnamedMorph6.