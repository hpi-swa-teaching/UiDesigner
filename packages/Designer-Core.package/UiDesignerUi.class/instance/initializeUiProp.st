ui - private
initializeUiProp
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	prop := UiContainer new.
	prop changeProportionalLayout.
	prop extent: (600@558).
	prop position: (0@42).
	prop hResizing: (#spaceFill).
	prop vResizing: (#spaceFill).
	prop minWidth: (2).
	prop minHeight: (2).
	prop cellInset: (10).
	prop cellPositioning: (#center).
	prop cellSpacing: (#none).
	prop layoutInset: (0).
	prop listCentering: (#topLeft).
	prop listDirection: (#topToBottom).
	prop listSpacing: (#none).
	prop maxCellSize: (1073741823).
	prop minCellSize: (0).
	prop wrapCentering: (#topLeft).
	prop wrapDirection: (#none).
	prop frameFractions: (0@0 corner: 1@1).
	prop frameOffsets: (0@0 corner: 0@0).
	prop balloonText: (nil).
	prop balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	prop color: (Color transparent).
	prop borderWidth: (0).
	prop borderStyle2: (#simple).
	prop borderColor: (Color black).
	prop setProperty: #objectName toValue: 'prop'.
	prop addChild:(self initializeUiCentralScroller).
	prop addChild:(self initializeUnnamedUiComboBox4).
	^ prop