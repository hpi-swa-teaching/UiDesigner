ui - private
initializeUiNewBtn
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	newBtn := UiPushButton new.
	newBtn changeTableLayout.
	newBtn extent: (192@20).
	newBtn position: (270@246).
	newBtn hResizing: (#spaceFill).
	newBtn vResizing: (#shrinkWrap).
	newBtn minWidth: (2).
	newBtn minHeight: (2).
	newBtn cellInset: (4).
	newBtn cellPositioning: (#center).
	newBtn cellSpacing: (#none).
	newBtn layoutInset: (2@0 corner: 2@0).
	newBtn listCentering: (#topLeft).
	newBtn listDirection: (#leftToRight).
	newBtn listSpacing: (#none).
	newBtn maxCellSize: (1073741823).
	newBtn minCellSize: (0).
	newBtn wrapCentering: (#topLeft).
	newBtn wrapDirection: (#none).
	newBtn frameFractions: (0@0 corner: 1@1).
	newBtn frameOffsets: (0@0 corner: 0@0).
	newBtn balloonText: (nil).
	newBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	newBtn enabled: (true).
	newBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons pageWhiteIcon'.
	newBtn icon: (UiSilkIcons pageWhiteIcon).
	newBtn text: ('Create Empty Design').
	newBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	newBtn checkable: (false).
	newBtn checked: (false).
	newBtn autoExclusive: (false).
	newBtn setProperty: #objectName toValue: 'newBtn'.
	^ newBtn