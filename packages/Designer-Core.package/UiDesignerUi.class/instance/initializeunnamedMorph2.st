ui - private
initializeunnamedMorph2
		
	
	| unnamedMorph2 |
	unnamedMorph2 := UiPushButton new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (36@20).
	unnamedMorph2 position: (277@9).
	unnamedMorph2 hResizing: (#shrinkWrap).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (4).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (2@0 corner: 2@0).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	unnamedMorph2 enabled: (true).
	unnamedMorph2 setProperty: #iconByDesigner toValue: 'nil'.
	unnamedMorph2 icon: (nil).
	unnamedMorph2 text: ('undo').
	unnamedMorph2 color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	unnamedMorph2 checkable: (false).
	unnamedMorph2 checked: (false).
	unnamedMorph2 autoExclusive: (false).
	^ unnamedMorph2.