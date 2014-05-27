ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	okButton := UiPushButton new.
	okButton changeTableLayout.
	okButton extent: (23@20).
	okButton position: (329@234).
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
	okButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	okButton enabled: (true).
	okButton setProperty: #iconByDesigner toValue: 'nil'.
	okButton icon: (nil).
	okButton text: ('Ok').
	okButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	okButton checkable: (false).
	okButton checked: (false).
	okButton autoExclusive: (false).
	okButton setProperty: #objectName toValue: 'okButton'.
	panel addChild: okButton.
	cancelButton := UiPushButton new.
	cancelButton changeTableLayout.
	cancelButton extent: (47@20).
	cancelButton position: (105@236).
	cancelButton hResizing: (#shrinkWrap).
	cancelButton vResizing: (#shrinkWrap).
	cancelButton minWidth: (2).
	cancelButton minHeight: (2).
	cancelButton cellInset: (4).
	cancelButton cellPositioning: (#center).
	cancelButton cellSpacing: (#none).
	cancelButton layoutInset: (2@0 corner: 2@0).
	cancelButton listCentering: (#topLeft).
	cancelButton listDirection: (#leftToRight).
	cancelButton listSpacing: (#none).
	cancelButton maxCellSize: (1073741823).
	cancelButton minCellSize: (0).
	cancelButton wrapCentering: (#topLeft).
	cancelButton wrapDirection: (#none).
	cancelButton frameFractions: (0@0 corner: 1@1).
	cancelButton frameOffsets: (0@0 corner: 0@0).
	cancelButton balloonText: (nil).
	cancelButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	cancelButton enabled: (true).
	cancelButton setProperty: #iconByDesigner toValue: 'nil'.
	cancelButton icon: (nil).
	cancelButton text: ('Cancel').
	cancelButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	cancelButton checkable: (false).
	cancelButton checked: (false).
	cancelButton autoExclusive: (false).
	cancelButton setProperty: #objectName toValue: 'cancelButton'.
	panel addChild: cancelButton.
	autoGenerationCheckbox := UiCheckBox new.
	autoGenerationCheckbox changeTableLayout.
	autoGenerationCheckbox extent: (223@20).
	autoGenerationCheckbox position: (52@192).
	autoGenerationCheckbox hResizing: (#shrinkWrap).
	autoGenerationCheckbox vResizing: (#shrinkWrap).
	autoGenerationCheckbox minWidth: (2).
	autoGenerationCheckbox minHeight: (2).
	autoGenerationCheckbox cellInset: (4).
	autoGenerationCheckbox cellPositioning: (#center).
	autoGenerationCheckbox cellSpacing: (#none).
	autoGenerationCheckbox layoutInset: (2@0 corner: 2@0).
	autoGenerationCheckbox listCentering: (#topLeft).
	autoGenerationCheckbox listDirection: (#leftToRight).
	autoGenerationCheckbox listSpacing: (#none).
	autoGenerationCheckbox maxCellSize: (1073741823).
	autoGenerationCheckbox minCellSize: (0).
	autoGenerationCheckbox wrapCentering: (#topLeft).
	autoGenerationCheckbox wrapDirection: (#none).
	autoGenerationCheckbox frameFractions: (0@0 corner: 1@1).
	autoGenerationCheckbox frameOffsets: (0@0 corner: 0@0).
	autoGenerationCheckbox balloonText: (nil).
	autoGenerationCheckbox balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	autoGenerationCheckbox enabled: (true).
	autoGenerationCheckbox setProperty: #iconByDesigner toValue: 'nil'.
	autoGenerationCheckbox icon: (nil).
	autoGenerationCheckbox text: ('Auto-generate surrounding class').
	autoGenerationCheckbox color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	autoGenerationCheckbox checkable: (true).
	autoGenerationCheckbox checked: (false).
	autoGenerationCheckbox autoExclusive: (false).
	autoGenerationCheckbox setProperty: #objectName toValue: 'autoGenerationCheckbox'.
	panel addChild: autoGenerationCheckbox.
	classNameInput := UiLineEdit new.
	classNameInput extent: (160@20).
	classNameInput position: (175@132).
	classNameInput hResizing: (#spaceFill).
	classNameInput vResizing: (#rigid).
	classNameInput minWidth: (2).
	classNameInput minHeight: (2).
	classNameInput cellInset: (0).
	classNameInput cellPositioning: (#center).
	classNameInput cellSpacing: (#none).
	classNameInput layoutInset: (0).
	classNameInput listCentering: (#topLeft).
	classNameInput listDirection: (#topToBottom).
	classNameInput listSpacing: (#none).
	classNameInput maxCellSize: (1073741823).
	classNameInput minCellSize: (0).
	classNameInput wrapCentering: (#topLeft).
	classNameInput wrapDirection: (#none).
	classNameInput frameFractions: (0@0 corner: 1@1).
	classNameInput frameOffsets: (0@0 corner: 0@0).
	classNameInput balloonText: (nil).
	classNameInput balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	classNameInput widgetResizable: (false).
	classNameInput horizontalScrollBarPolicy: (#alwaysOff).
	classNameInput verticalScrollBarPolicy: (#alwaysOff).
	classNameInput outerBorderWidth: (1).
	classNameInput scrollBarThickness: (9).
	classNameInput theText: ('').
	classNameInput readOnly: (false).
	classNameInput autoConvert: (false).
	classNameInput autoAccept: (false).
	classNameInput acceptOnFocusLost: (true).
	classNameInput scrollingMode: (#none).
	classNameInput scrollingLimit: (10).
	classNameInput helpText: ('').
	classNameInput hideCursor: (true).
	classNameInput setProperty: #objectName toValue: 'classNameInput'.
	panel addChild: classNameInput.
	packageNameInput := UiLineEdit new.
	packageNameInput extent: (160@20).
	packageNameInput position: (176@71).
	packageNameInput hResizing: (#spaceFill).
	packageNameInput vResizing: (#rigid).
	packageNameInput minWidth: (2).
	packageNameInput minHeight: (2).
	packageNameInput cellInset: (0).
	packageNameInput cellPositioning: (#center).
	packageNameInput cellSpacing: (#none).
	packageNameInput layoutInset: (0).
	packageNameInput listCentering: (#topLeft).
	packageNameInput listDirection: (#topToBottom).
	packageNameInput listSpacing: (#none).
	packageNameInput maxCellSize: (1073741823).
	packageNameInput minCellSize: (0).
	packageNameInput wrapCentering: (#topLeft).
	packageNameInput wrapDirection: (#none).
	packageNameInput frameFractions: (0@0 corner: 1@1).
	packageNameInput frameOffsets: (0@0 corner: 0@0).
	packageNameInput balloonText: (nil).
	packageNameInput balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	packageNameInput widgetResizable: (false).
	packageNameInput horizontalScrollBarPolicy: (#alwaysOff).
	packageNameInput verticalScrollBarPolicy: (#alwaysOff).
	packageNameInput outerBorderWidth: (1).
	packageNameInput scrollBarThickness: (9).
	packageNameInput theText: ('').
	packageNameInput readOnly: (false).
	packageNameInput autoConvert: (false).
	packageNameInput autoAccept: (false).
	packageNameInput acceptOnFocusLost: (true).
	packageNameInput scrollingMode: (#none).
	packageNameInput scrollingLimit: (10).
	packageNameInput helpText: ('').
	packageNameInput hideCursor: (true).
	packageNameInput setProperty: #objectName toValue: 'packageNameInput'.
	panel addChild: packageNameInput.
	classNameLabel := UiLabel new.
	classNameLabel changeTableLayout.
	classNameLabel extent: (75@18).
	classNameLabel position: (53@134).
	classNameLabel hResizing: (#shrinkWrap).
	classNameLabel vResizing: (#shrinkWrap).
	classNameLabel minWidth: (2).
	classNameLabel minHeight: (2).
	classNameLabel cellInset: (0).
	classNameLabel cellPositioning: (#center).
	classNameLabel cellSpacing: (#none).
	classNameLabel layoutInset: (0).
	classNameLabel listCentering: (#topLeft).
	classNameLabel listDirection: (#leftToRight).
	classNameLabel listSpacing: (#none).
	classNameLabel maxCellSize: (1073741823).
	classNameLabel minCellSize: (0).
	classNameLabel wrapCentering: (#topLeft).
	classNameLabel wrapDirection: (#none).
	classNameLabel frameFractions: (0@0 corner: 1@1).
	classNameLabel frameOffsets: (0@0 corner: 0@0).
	classNameLabel balloonText: (nil).
	classNameLabel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	classNameLabel text: ('Class Name ').
	classNameLabel setProperty: #formByDesigner toValue: 'nil'.
	classNameLabel form: (nil).
	classNameLabel setProperty: #objectName toValue: 'classNameLabel'.
	panel addChild: classNameLabel.
	packageNameLabel := UiLabel new.
	packageNameLabel changeTableLayout.
	packageNameLabel extent: (89@18).
	packageNameLabel position: (47@74).
	packageNameLabel hResizing: (#shrinkWrap).
	packageNameLabel vResizing: (#shrinkWrap).
	packageNameLabel minWidth: (2).
	packageNameLabel minHeight: (2).
	packageNameLabel cellInset: (0).
	packageNameLabel cellPositioning: (#center).
	packageNameLabel cellSpacing: (#none).
	packageNameLabel layoutInset: (0).
	packageNameLabel listCentering: (#topLeft).
	packageNameLabel listDirection: (#leftToRight).
	packageNameLabel listSpacing: (#none).
	packageNameLabel maxCellSize: (1073741823).
	packageNameLabel minCellSize: (0).
	packageNameLabel wrapCentering: (#topLeft).
	packageNameLabel wrapDirection: (#none).
	packageNameLabel frameFractions: (0@0 corner: 1@1).
	packageNameLabel frameOffsets: (0@0 corner: 0@0).
	packageNameLabel balloonText: (nil).
	packageNameLabel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	packageNameLabel text: ('Package Name').
	packageNameLabel setProperty: #formByDesigner toValue: 'nil'.
	packageNameLabel form: (nil).
	packageNameLabel setProperty: #objectName toValue: 'packageNameLabel'.
	panel addChild: packageNameLabel.
	unnamedMorph1 := UiLabel new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (291@18).
	unnamedMorph1 position: (106@16).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	unnamedMorph1 text: ('Where do you want to save the genereated UI?').
	unnamedMorph1 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph1 form: (nil).
	panel addChild: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'UiSaveDialog'.