ui - private
initializeUiCancelButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	cancelButton := UiPushButton new.
	cancelButton changeTableLayout.
	cancelButton extent: (67@20).
	cancelButton position: (327@224).
	cancelButton hResizing: (#shrinkWrap).
	cancelButton vResizing: (#shrinkWrap).
	cancelButton minWidth: (2).
	cancelButton minHeight: (2).
	cancelButton cellInset: (4).
	cancelButton cellPositioning: (#center).
	cancelButton cellSpacing: (#none).
	cancelButton layoutInset: (2@0 corner: 2@0).
	cancelButton listCentering: (#topLeft).
	cancelButton listDirection: (#leftToRight).
	cancelButton listSpacing: (#none).
	cancelButton maxCellSize: (1073741823).
	cancelButton minCellSize: (0).
	cancelButton wrapCentering: (#topLeft).
	cancelButton wrapDirection: (#none).
	cancelButton frameFractions: (0@0 corner: 1@1).
	cancelButton frameOffsets: (0@0 corner: 0@0).
	cancelButton balloonText: (nil).
	cancelButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	cancelButton enabled: (true).
	cancelButton setProperty: #iconByDesigner toValue: 'UiFugueIcons crossCircleIcon'.
	cancelButton icon: (UiFugueIcons crossCircleIcon).
	cancelButton text: ('Cancel').
	cancelButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	cancelButton checkable: (false).
	cancelButton checked: (false).
	cancelButton autoExclusive: (false).
	cancelButton setProperty: #objectName toValue: 'cancelButton'.
	^ cancelButton