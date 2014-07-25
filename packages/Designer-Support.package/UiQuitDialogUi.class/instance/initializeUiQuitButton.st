ui - private
initializeUiQuitButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	quitButton := UiPushButton new.
	quitButton changeTableLayout.
	quitButton extent: (31@20).
	quitButton position: (220@55).
	quitButton hResizing: (#shrinkWrap).
	quitButton vResizing: (#shrinkWrap).
	quitButton minWidth: (2).
	quitButton minHeight: (2).
	quitButton cellInset: (4).
	quitButton cellPositioning: (#center).
	quitButton cellSpacing: (#none).
	quitButton layoutInset: (2@0 corner: 2@0).
	quitButton listCentering: (#topLeft).
	quitButton listDirection: (#leftToRight).
	quitButton listSpacing: (#none).
	quitButton maxCellSize: (1073741823).
	quitButton minCellSize: (0).
	quitButton wrapCentering: (#topLeft).
	quitButton wrapDirection: (#none).
	quitButton frameFractions: (0@0 corner: 1@1).
	quitButton frameOffsets: (0@0 corner: 0@0).
	quitButton balloonText: (nil).
	quitButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	quitButton enabled: (true).
	quitButton setProperty: #iconByDesigner toValue: 'nil'.
	quitButton icon: (nil).
	quitButton text: ('Quit').
	quitButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	quitButton checkable: (false).
	quitButton checked: (false).
	quitButton autoExclusive: (false).
	quitButton setProperty: #objectName toValue: 'quitButton'.
	^ quitButton