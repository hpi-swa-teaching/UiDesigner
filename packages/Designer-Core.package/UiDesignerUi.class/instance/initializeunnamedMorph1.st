ui - private
initializeunnamedMorph1
		
	
	| unnamedMorph1 |
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (600@37).
	unnamedMorph1 position: (0@0).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4@0 corner: 4@0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color red).
	unnamedMorph1 addChild:(self initializenewBtn).
	unnamedMorph1 addChild:(self initializeopenBtn).
	unnamedMorph1 addChild:(self initializesaveBtn).
	unnamedMorph1 addChild:(self initializewidgetsWindowButton).
	unnamedMorph1 addChild:(self initializeattributesWindowButton).
	unnamedMorph1 addChild:(self initializehierarchyWindowButton).
	unnamedMorph1 addChild:(self initializeundoButton).
	unnamedMorph1 addChild:(self initializeundoComboBox).
	unnamedMorph1 addChild:(self initializeredoButton).
	unnamedMorph1 addChild:(self initializeredoComboBox).
	unnamedMorph1 addChild:(self initializeunnamedMorph2).
	unnamedMorph1 addChild:(self initializeunnamedMorph3).
	unnamedMorph1 addChild:(self initializepackageNameEdit).
	^ unnamedMorph1.