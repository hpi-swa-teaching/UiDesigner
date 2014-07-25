ui - private
initializeUiOkButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	okButton := UiPushButton new.
	okButton changeTableLayout.
	okButton extent: (44@20).
	okButton position: (277@224).
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
	okButton balloonText: (nil).
	okButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	okButton enabled: (true).
	okButton setProperty: #iconByDesigner toValue: 'UiSilkIcons acceptIcon'.
	okButton icon: (UiSilkIcons acceptIcon).
	okButton text: ('OK').
	okButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	okButton checkable: (false).
	okButton checked: (false).
	okButton autoExclusive: (false).
	okButton setProperty: #objectName toValue: 'okButton'.
	^ okButton