ui - private
initializeUiOkButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	okButton := UiPushButton new.
	okButton changeTableLayout.
	okButton extent: (36@20).
	okButton position: (352@315).
	okButton hResizing: (#shrinkWrap).
	okButton vResizing: (#shrinkWrap).
	okButton minWidth: (2).
	okButton minHeight: (2).
	okButton cellInset: (4).
	okButton cellPositioning: (#center).
	okButton cellSpacing: (#none).
	okButton layoutInset: (2@0 corner: 2@0).
	okButton listCentering: (#topLeft).
	okButton listDirection: (#leftToRight).
	okButton listSpacing: (#none).
	okButton maxCellSize: (1073741823).
	okButton minCellSize: (0).
	okButton wrapCentering: (#topLeft).
	okButton wrapDirection: (#none).
	okButton frameFractions: (0@0 corner: 1@1).
	okButton frameOffsets: (0@0 corner: 0@0).
	okButton balloonText: ('nil').
	okButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	okButton enabled: (true).
	okButton setProperty: #iconByDesigner toValue: 'nil'.
	okButton icon: (nil).
	okButton text: ('Save').
	okButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	okButton checkable: (false).
	okButton checked: (false).
	okButton autoExclusive: (false).
	okButton setProperty: #objectName toValue: 'okButton'.
	^ okButton