ui - private
initializeUnnamedUiContainer1
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	| unnamedUiContainer1 |
	unnamedUiContainer1 := UiContainer new.
	unnamedUiContainer1 changeTableLayout.
	unnamedUiContainer1 extent: (200@160).
	unnamedUiContainer1 position: (30@110).
	unnamedUiContainer1 hResizing: (#rigid).
	unnamedUiContainer1 vResizing: (#rigid).
	unnamedUiContainer1 minWidth: (2).
	unnamedUiContainer1 minHeight: (2).
	unnamedUiContainer1 cellInset: (4).
	unnamedUiContainer1 cellPositioning: (#topLeft).
	unnamedUiContainer1 cellSpacing: (#none).
	unnamedUiContainer1 layoutInset: (4).
	unnamedUiContainer1 listCentering: (#topLeft).
	unnamedUiContainer1 listDirection: (#topToBottom).
	unnamedUiContainer1 listSpacing: (#none).
	unnamedUiContainer1 maxCellSize: (1073741823).
	unnamedUiContainer1 minCellSize: (0).
	unnamedUiContainer1 wrapCentering: (#topLeft).
	unnamedUiContainer1 wrapDirection: (#none).
	unnamedUiContainer1 frameFractions: (0@0 corner: 1@1).
	unnamedUiContainer1 frameOffsets: (0@0 corner: 0@0).
	unnamedUiContainer1 balloonText: (nil).
	unnamedUiContainer1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	unnamedUiContainer1 color: ((TranslucentColor r: 0.6 g: 0.6 b: 0.6 alpha: 0.2)).
	unnamedUiContainer1 borderWidth: (0).
	unnamedUiContainer1 borderStyle2: (#simple).
	unnamedUiContainer1 borderColor: (Color black).
	unnamedUiContainer1 addChild:(self initializeUiRecentLbl).
	unnamedUiContainer1 addChild:(self initializeUiRecentList).
	unnamedUiContainer1 addChild:(self initializeUiOpenBtn).
	^ unnamedUiContainer1