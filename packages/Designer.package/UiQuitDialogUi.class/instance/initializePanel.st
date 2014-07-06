ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel extent: (341@94).
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiLabel new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (292@18).
	unnamedMorph1 position: (22@23).
	unnamedMorph1 hResizing: (#shrinkWrap).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (0).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	unnamedMorph1 text: ('Do you want to save your unchanged changes ?').
	unnamedMorph1 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph1 form: (nil).
	panel addChild: unnamedMorph1.
	quitButton := UiPushButton new.
	quitButton changeTableLayout.
	quitButton extent: (31@20).
	quitButton position: (220@55).
	quitButton hResizing: (#shrinkWrap).
	quitButton vResizing: (#shrinkWrap).
	quitButton minWidth: (2).
	quitButton minHeight: (2).
	quitButton cellInset: (4).
	quitButton cellPositioning: (#center).
	quitButton cellSpacing: (#none).
	quitButton layoutInset: (2@0 corner: 2@0).
	quitButton listCentering: (#topLeft).
	quitButton listDirection: (#leftToRight).
	quitButton listSpacing: (#none).
	quitButton maxCellSize: (1073741823).
	quitButton minCellSize: (0).
	quitButton wrapCentering: (#topLeft).
	quitButton wrapDirection: (#none).
	quitButton frameFractions: (0@0 corner: 1@1).
	quitButton frameOffsets: (0@0 corner: 0@0).
	quitButton balloonText: (nil).
	quitButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	quitButton enabled: (true).
	quitButton setProperty: #iconByDesigner toValue: 'nil'.
	quitButton icon: (nil).
	quitButton text: ('Quit').
	quitButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	quitButton checkable: (false).
	quitButton checked: (false).
	quitButton autoExclusive: (false).
	quitButton setProperty: #objectName toValue: 'quitButton'.
	panel addChild: quitButton.
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
	saveButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	saveButton enabled: (true).
	saveButton setProperty: #iconByDesigner toValue: 'nil'.
	saveButton icon: (nil).
	saveButton text: ('Save').
	saveButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	saveButton checkable: (false).
	saveButton checked: (false).
	saveButton autoExclusive: (false).
	saveButton setProperty: #objectName toValue: 'saveButton'.
	panel addChild: saveButton.
	panel setProperty: #uiClassName toValue: 'UiQuitDialog'.