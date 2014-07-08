ui - private
initializeUiRedoButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	redoButton := UiPushButton new.
	redoButton changeTableLayout.
	redoButton extent: (35@20).
	redoButton position: (342@9).
	redoButton hResizing: (#shrinkWrap).
	redoButton vResizing: (#shrinkWrap).
	redoButton minWidth: (2).
	redoButton minHeight: (2).
	redoButton cellInset: (4).
	redoButton cellPositioning: (#center).
	redoButton cellSpacing: (#none).
	redoButton layoutInset: (2@0 corner: 2@0).
	redoButton listCentering: (#topLeft).
	redoButton listDirection: (#leftToRight).
	redoButton listSpacing: (#none).
	redoButton maxCellSize: (1073741823).
	redoButton minCellSize: (0).
	redoButton wrapCentering: (#topLeft).
	redoButton wrapDirection: (#none).
	redoButton frameFractions: (0@0 corner: 1@1).
	redoButton frameOffsets: (0@0 corner: 0@0).
	redoButton balloonText: (nil).
	redoButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	redoButton enabled: (false).
	redoButton setProperty: #iconByDesigner toValue: 'nil'.
	redoButton icon: (nil).
	redoButton text: ('redo').
	redoButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	redoButton checkable: (false).
	redoButton checked: (false).
	redoButton autoExclusive: (false).
	redoButton setProperty: #objectName toValue: 'redoButton'.
	^ redoButton