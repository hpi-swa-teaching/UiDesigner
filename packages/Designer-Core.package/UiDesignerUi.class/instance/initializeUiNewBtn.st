ui - private
initializeUiNewBtn
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	newBtn := UiToolButton new.
	newBtn changeTableLayout.
	newBtn extent: (28@36).
	newBtn position: (4@0).
	newBtn hResizing: (#shrinkWrap).
	newBtn vResizing: (#shrinkWrap).
	newBtn minWidth: (2).
	newBtn minHeight: (2).
	newBtn cellInset: (0).
	newBtn cellPositioning: (#center).
	newBtn cellSpacing: (#none).
	newBtn layoutInset: (3@4 corner: 3@0).
	newBtn listCentering: (#topLeft).
	newBtn listDirection: (#topToBottom).
	newBtn listSpacing: (#none).
	newBtn maxCellSize: (1073741823).
	newBtn minCellSize: (0).
	newBtn wrapCentering: (#topLeft).
	newBtn wrapDirection: (#none).
	newBtn frameFractions: (0@0 corner: 1@1).
	newBtn frameOffsets: (0@0 corner: 0@0).
	newBtn balloonText: ('Create a new user interface
and close the current one.').
	newBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	newBtn enabled: (true).
	newBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons pageWhiteIcon'.
	newBtn icon: (UiSilkIcons pageWhiteIcon).
	newBtn text: ('New').
	newBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	newBtn checkable: (false).
	newBtn checked: (false).
	newBtn autoExclusive: (false).
	newBtn autoRaise: (true).
	newBtn buttonStyle: (#textUnderIcon).
	newBtn setProperty: #objectName toValue: 'newBtn'.
	^ newBtn