ui - private
initializeunnamedMorph3
		
	
	| unnamedMorph3 |
	unnamedMorph3 := UiPushButton new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (35@20).
	unnamedMorph3 position: (319@9).
	unnamedMorph3 hResizing: (#shrinkWrap).
	unnamedMorph3 vResizing: (#shrinkWrap).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (4).
	unnamedMorph3 cellPositioning: (#center).
	unnamedMorph3 cellSpacing: (#none).
	unnamedMorph3 layoutInset: (2@0 corner: 2@0).
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
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	unnamedMorph3 enabled: (true).
	unnamedMorph3 setProperty: #iconByDesigner toValue: 'nil'.
	unnamedMorph3 icon: (nil).
	unnamedMorph3 text: ('redo').
	unnamedMorph3 color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	unnamedMorph3 checkable: (false).
	unnamedMorph3 checked: (false).
	unnamedMorph3 autoExclusive: (false).
	^ unnamedMorph3.