ui - private
initializeUiPanel
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	| panel |
	panel := UiContainer new.
	panel extent: (500@300).
	panel position: (0@0).
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
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	panel color: (Color lightGray).
	panel borderWidth: (1).
	panel borderStyle2: (#simple).
	panel borderColor: (Color gray).
	panel setProperty: #objectName toValue: 'panel'.
	panel addChild:(self initializeUiTitleLbl).
	panel addChild:(self initializeUnnamedUiContainer1).
	panel addChild:(self initializeUnnamedUiContainer2).
	panel addChild:(self initializeUiVersionLbl).
	^ panel