ui - private
initializeundoButton
		
	undoButton := UiPushButton new.
	undoButton changeTableLayout.
	undoButton extent: (36@20).
	undoButton position: (277@9).
	undoButton hResizing: (#shrinkWrap).
	undoButton vResizing: (#shrinkWrap).
	undoButton minWidth: (2).
	undoButton minHeight: (2).
	undoButton cellInset: (4).
	undoButton cellPositioning: (#center).
	undoButton cellSpacing: (#none).
	undoButton layoutInset: (2@0 corner: 2@0).
	undoButton listCentering: (#topLeft).
	undoButton listDirection: (#leftToRight).
	undoButton listSpacing: (#none).
	undoButton maxCellSize: (1073741823).
	undoButton minCellSize: (0).
	undoButton wrapCentering: (#topLeft).
	undoButton wrapDirection: (#none).
	undoButton frameFractions: (0@0 corner: 1@1).
	undoButton frameOffsets: (0@0 corner: 0@0).
	undoButton balloonText: (nil).
	undoButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.725)).
	undoButton enabled: (false).
	undoButton setProperty: #iconByDesigner toValue: 'nil'.
	undoButton icon: (nil).
	undoButton text: ('undo').
	undoButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	undoButton checkable: (false).
	undoButton checked: (false).
	undoButton autoExclusive: (false).
	undoButton setProperty: #objectName toValue: 'undoButton'.
	^ undoButton.