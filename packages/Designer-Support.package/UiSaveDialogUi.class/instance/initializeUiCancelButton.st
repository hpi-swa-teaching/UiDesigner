ui - private
initializeUiCancelButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	cancelButton := UiPushButton new.
	cancelButton changeTableLayout.
	cancelButton extent: (47@20).
	cancelButton position: (284@316).
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
	cancelButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	cancelButton enabled: (true).
	cancelButton setProperty: #iconByDesigner toValue: 'nil'.
	cancelButton icon: (nil).
	cancelButton text: ('Cancel').
	cancelButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	cancelButton checkable: (false).
	cancelButton checked: (false).
	cancelButton autoExclusive: (false).
	cancelButton setProperty: #objectName toValue: 'cancelButton'.
	^ cancelButton