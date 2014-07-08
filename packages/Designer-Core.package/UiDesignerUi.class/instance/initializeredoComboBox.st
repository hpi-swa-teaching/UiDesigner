ui - private
initializeredoComboBox
		
	redoComboBox := UiComboBox new.
	redoComboBox extent: (14@20).
	redoComboBox position: (384@9).
	redoComboBox hResizing: (#rigid).
	redoComboBox vResizing: (#rigid).
	redoComboBox minWidth: (2).
	redoComboBox minHeight: (2).
	redoComboBox cellInset: (0).
	redoComboBox cellPositioning: (#center).
	redoComboBox cellSpacing: (#none).
	redoComboBox layoutInset: (0).
	redoComboBox listCentering: (#topLeft).
	redoComboBox listDirection: (#topToBottom).
	redoComboBox listSpacing: (#none).
	redoComboBox maxCellSize: (1073741823).
	redoComboBox minCellSize: (0).
	redoComboBox wrapCentering: (#topLeft).
	redoComboBox wrapDirection: (#none).
	redoComboBox frameFractions: (0@0 corner: 1@1).
	redoComboBox frameOffsets: (0@0 corner: 0@0).
	redoComboBox balloonText: (nil).
	redoComboBox balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	redoComboBox readOnly: (true).
	redoComboBox setProperty: #objectName toValue: 'redoComboBox'.
	^ redoComboBox.