ui - private
initializeUiSaveButton
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	saveButton := UiPushButton new.
	saveButton changeTableLayout.
	saveButton extent: (36@20).
	saveButton position: (75@55).
	saveButton hResizing: (#shrinkWrap).
	saveButton vResizing: (#shrinkWrap).
	saveButton minWidth: (2).
	saveButton minHeight: (2).
	saveButton cellInset: (4).
	saveButton cellPositioning: (#center).
	saveButton cellSpacing: (#none).
	saveButton layoutInset: (2@0 corner: 2@0).
	saveButton listCentering: (#topLeft).
	saveButton listDirection: (#leftToRight).
	saveButton listSpacing: (#none).
	saveButton maxCellSize: (1073741823).
	saveButton minCellSize: (0).
	saveButton wrapCentering: (#topLeft).
	saveButton wrapDirection: (#none).
	saveButton frameFractions: (0@0 corner: 1@1).
	saveButton frameOffsets: (0@0 corner: 0@0).
	saveButton balloonText: (nil).
	saveButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	saveButton enabled: (true).
	saveButton setProperty: #iconByDesigner toValue: 'nil'.
	saveButton icon: (nil).
	saveButton text: ('Save').
	saveButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	saveButton checkable: (false).
	saveButton checked: (false).
	saveButton autoExclusive: (false).
	saveButton setProperty: #objectName toValue: 'saveButton'.
	^ saveButton