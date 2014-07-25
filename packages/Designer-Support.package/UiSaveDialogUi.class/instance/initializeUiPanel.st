ui - private
initializeUiPanel
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	| panel |
	panel := UiContainer new.
	panel extent: (454@186).
	panel position: (233@174).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: ('nil').
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	panel addChild:(self initializeUiWarningLabel).
	panel addChild:(self initializeUiSaveWithSurroundingClass).
	panel addChild:(self initializeUiOkButton).
	panel addChild:(self initializeUiCancelButton).
	panel addChild:(self initializeUiClassNameLabel).
	panel addChild:(self initializeUiClassNameInput).
	panel addChild:(self initializeUiPackageNameLabel).
	panel addChild:(self initializeUiPackageNameInput).
	panel addChild:(self initializeUnnamedUiLabel1).
	^ panel