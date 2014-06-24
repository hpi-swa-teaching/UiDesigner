ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (800@600).
	panel position: (0@0).
	panel hResizing: (#spaceFill).
	panel vResizing: (#spaceFill).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (0).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	panel setProperty: #objectDescription toValue: 'This is the user interface layout for the morphic designer.'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (800@37).
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
	newBtn := UiToolButton new.
	newBtn changeTableLayout.
	newBtn extent: (28@36).
	newBtn position: (4@0).
	newBtn hResizing: (#shrinkWrap).
	newBtn vResizing: (#shrinkWrap).
	newBtn minWidth: (2).
	newBtn minHeight: (2).
	newBtn cellInset: (0).
	newBtn cellPositioning: (#center).
	newBtn cellSpacing: (#none).
	newBtn layoutInset: (3@4 corner: 3@0).
	newBtn listCentering: (#topLeft).
	newBtn listDirection: (#topToBottom).
	newBtn listSpacing: (#none).
	newBtn maxCellSize: (1073741823).
	newBtn minCellSize: (0).
	newBtn wrapCentering: (#topLeft).
	newBtn wrapDirection: (#none).
	newBtn frameFractions: (0@0 corner: 1@1).
	newBtn frameOffsets: (0@0 corner: 0@0).
	newBtn balloonText: ('Create a new user interface
and close the current one.').
	newBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	newBtn enabled: (true).
	newBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons pageWhiteIcon'.
	newBtn icon: (UiSilkIcons pageWhiteIcon).
	newBtn text: ('New').
	newBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	newBtn checkable: (false).
	newBtn checked: (false).
	newBtn autoExclusive: (false).
	newBtn autoRaise: (true).
	newBtn buttonStyle: (#textUnderIcon).
	newBtn setProperty: #objectName toValue: 'newBtn'.
	unnamedMorph1 addChild: newBtn.
	openBtn := UiToolButton new.
	openBtn changeTableLayout.
	openBtn extent: (32@36).
	openBtn position: (38@0).
	openBtn hResizing: (#shrinkWrap).
	openBtn vResizing: (#shrinkWrap).
	openBtn minWidth: (2).
	openBtn minHeight: (2).
	openBtn cellInset: (0).
	openBtn cellPositioning: (#center).
	openBtn cellSpacing: (#none).
	openBtn layoutInset: (3@4 corner: 3@0).
	openBtn listCentering: (#topLeft).
	openBtn listDirection: (#topToBottom).
	openBtn listSpacing: (#none).
	openBtn maxCellSize: (1073741823).
	openBtn minCellSize: (0).
	openBtn wrapCentering: (#topLeft).
	openBtn wrapDirection: (#none).
	openBtn frameFractions: (0@0 corner: 1@1).
	openBtn frameOffsets: (0@0 corner: 0@0).
	openBtn balloonText: ('Open a present user
interface.').
	openBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	openBtn enabled: (true).
	openBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons folderIcon'.
	openBtn icon: (UiSilkIcons folderIcon).
	openBtn text: ('Open').
	openBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	openBtn checkable: (false).
	openBtn checked: (false).
	openBtn autoExclusive: (false).
	openBtn autoRaise: (true).
	openBtn buttonStyle: (#textUnderIcon).
	openBtn setProperty: #objectName toValue: 'openBtn'.
	unnamedMorph1 addChild: openBtn.
	saveBtn := UiToolButton new.
	saveBtn changeTableLayout.
	saveBtn extent: (31@36).
	saveBtn position: (76@0).
	saveBtn hResizing: (#shrinkWrap).
	saveBtn vResizing: (#shrinkWrap).
	saveBtn minWidth: (2).
	saveBtn minHeight: (2).
	saveBtn cellInset: (0).
	saveBtn cellPositioning: (#center).
	saveBtn cellSpacing: (#none).
	saveBtn layoutInset: (3@4 corner: 3@0).
	saveBtn listCentering: (#topLeft).
	saveBtn listDirection: (#topToBottom).
	saveBtn listSpacing: (#none).
	saveBtn maxCellSize: (1073741823).
	saveBtn minCellSize: (0).
	saveBtn wrapCentering: (#topLeft).
	saveBtn wrapDirection: (#none).
	saveBtn frameFractions: (0@0 corner: 1@1).
	saveBtn frameOffsets: (0@0 corner: 0@0).
	saveBtn balloonText: ('Save the current user
interfaces in the defined
package.').
	saveBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	saveBtn enabled: (true).
	saveBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons diskIcon'.
	saveBtn icon: (UiSilkIcons diskIcon).
	saveBtn text: ('Save').
	saveBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	saveBtn checkable: (false).
	saveBtn checked: (false).
	saveBtn autoExclusive: (false).
	saveBtn autoRaise: (true).
	saveBtn buttonStyle: (#textUnderIcon).
	saveBtn setProperty: #objectName toValue: 'saveBtn'.
	unnamedMorph1 addChild: saveBtn.
	widgetsWindowButton := UiToolButton new.
	widgetsWindowButton changeTableLayout.
	widgetsWindowButton extent: (44@16).
	widgetsWindowButton position: (114@11).
	widgetsWindowButton hResizing: (#shrinkWrap).
	widgetsWindowButton vResizing: (#shrinkWrap).
	widgetsWindowButton minWidth: (2).
	widgetsWindowButton minHeight: (2).
	widgetsWindowButton cellInset: (4).
	widgetsWindowButton cellPositioning: (#center).
	widgetsWindowButton cellSpacing: (#none).
	widgetsWindowButton layoutInset: (2@0 corner: 2@0).
	widgetsWindowButton listCentering: (#topLeft).
	widgetsWindowButton listDirection: (#leftToRight).
	widgetsWindowButton listSpacing: (#none).
	widgetsWindowButton maxCellSize: (1073741823).
	widgetsWindowButton minCellSize: (0).
	widgetsWindowButton wrapCentering: (#topLeft).
	widgetsWindowButton wrapDirection: (#none).
	widgetsWindowButton frameFractions: (0@0 corner: 1@1).
	widgetsWindowButton frameOffsets: (0@0 corner: 0@0).
	widgetsWindowButton balloonText: (nil).
	widgetsWindowButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	widgetsWindowButton enabled: (true).
	widgetsWindowButton setProperty: #iconByDesigner toValue: 'nil'.
	widgetsWindowButton icon: (nil).
	widgetsWindowButton text: ('Widgets').
	widgetsWindowButton color: ((Color r: 1 g: 0.871 b: 0.0)).
	widgetsWindowButton checkable: (true).
	widgetsWindowButton checked: (false).
	widgetsWindowButton autoExclusive: (false).
	widgetsWindowButton autoRaise: (true).
	widgetsWindowButton buttonStyle: (#textBesideIcon).
	widgetsWindowButton setProperty: #objectName toValue: 'widgetsWindowButton'.
	unnamedMorph1 addChild: widgetsWindowButton.
	attributesWindowButton := UiToolButton new.
	attributesWindowButton changeTableLayout.
	attributesWindowButton extent: (53@16).
	attributesWindowButton position: (164@11).
	attributesWindowButton hResizing: (#shrinkWrap).
	attributesWindowButton vResizing: (#shrinkWrap).
	attributesWindowButton minWidth: (2).
	attributesWindowButton minHeight: (2).
	attributesWindowButton cellInset: (4).
	attributesWindowButton cellPositioning: (#center).
	attributesWindowButton cellSpacing: (#none).
	attributesWindowButton layoutInset: (2@0 corner: 2@0).
	attributesWindowButton listCentering: (#topLeft).
	attributesWindowButton listDirection: (#leftToRight).
	attributesWindowButton listSpacing: (#none).
	attributesWindowButton maxCellSize: (1073741823).
	attributesWindowButton minCellSize: (0).
	attributesWindowButton wrapCentering: (#topLeft).
	attributesWindowButton wrapDirection: (#none).
	attributesWindowButton frameFractions: (0@0 corner: 1@1).
	attributesWindowButton frameOffsets: (0@0 corner: 0@0).
	attributesWindowButton balloonText: ('nil').
	attributesWindowButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	attributesWindowButton enabled: (true).
	attributesWindowButton setProperty: #iconByDesigner toValue: 'nil'.
	attributesWindowButton icon: (nil).
	attributesWindowButton text: ('Attributes').
	attributesWindowButton color: ((Color r: 1 g: 0.871 b: 0.0)).
	attributesWindowButton checkable: (true).
	attributesWindowButton checked: (false).
	attributesWindowButton autoExclusive: (false).
	attributesWindowButton autoRaise: (true).
	attributesWindowButton buttonStyle: (#textBesideIcon).
	attributesWindowButton setProperty: #objectName toValue: 'attributesWindowButton'.
	unnamedMorph1 addChild: attributesWindowButton.
	hierarchyWindowButton := UiToolButton new.
	hierarchyWindowButton changeTableLayout.
	hierarchyWindowButton extent: (48@16).
	hierarchyWindowButton position: (223@11).
	hierarchyWindowButton hResizing: (#shrinkWrap).
	hierarchyWindowButton vResizing: (#shrinkWrap).
	hierarchyWindowButton minWidth: (2).
	hierarchyWindowButton minHeight: (2).
	hierarchyWindowButton cellInset: (4).
	hierarchyWindowButton cellPositioning: (#center).
	hierarchyWindowButton cellSpacing: (#none).
	hierarchyWindowButton layoutInset: (2@0 corner: 2@0).
	hierarchyWindowButton listCentering: (#topLeft).
	hierarchyWindowButton listDirection: (#leftToRight).
	hierarchyWindowButton listSpacing: (#none).
	hierarchyWindowButton maxCellSize: (1073741823).
	hierarchyWindowButton minCellSize: (0).
	hierarchyWindowButton wrapCentering: (#topLeft).
	hierarchyWindowButton wrapDirection: (#none).
	hierarchyWindowButton frameFractions: (0@0 corner: 1@1).
	hierarchyWindowButton frameOffsets: (0@0 corner: 0@0).
	hierarchyWindowButton balloonText: (nil).
	hierarchyWindowButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	hierarchyWindowButton enabled: (true).
	hierarchyWindowButton setProperty: #iconByDesigner toValue: 'nil'.
	hierarchyWindowButton icon: (nil).
	hierarchyWindowButton text: ('Hierarchy').
	hierarchyWindowButton color: ((Color r: 1 g: 0.871 b: 0.0)).
	hierarchyWindowButton checkable: (true).
	hierarchyWindowButton checked: (false).
	hierarchyWindowButton autoExclusive: (false).
	hierarchyWindowButton autoRaise: (true).
	hierarchyWindowButton buttonStyle: (#textBesideIcon).
	hierarchyWindowButton setProperty: #objectName toValue: 'hierarchyWindowButton'.
	unnamedMorph1 addChild: hierarchyWindowButton.
	unnamedMorph2 := UiSpacer new.
	unnamedMorph2 extent: (354@16).
	unnamedMorph2 position: (276@11).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#rigid).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (4).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (4).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#topToBottom).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph2 color: (Color blue).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph2 orientation: (#horizontal).
	unnamedMorph1 addChild: unnamedMorph2.
	unnamedMorph3 := UiLabel new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (16@16).
	unnamedMorph3 position: (634@11).
	unnamedMorph3 hResizing: (#shrinkWrap).
	unnamedMorph3 vResizing: (#shrinkWrap).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (0).
	unnamedMorph3 cellPositioning: (#center).
	unnamedMorph3 cellSpacing: (#none).
	unnamedMorph3 layoutInset: (0).
	unnamedMorph3 listCentering: (#topLeft).
	unnamedMorph3 listDirection: (#leftToRight).
	unnamedMorph3 listSpacing: (#none).
	unnamedMorph3 maxCellSize: (1073741823).
	unnamedMorph3 minCellSize: (0).
	unnamedMorph3 wrapCentering: (#topLeft).
	unnamedMorph3 wrapDirection: (#none).
	unnamedMorph3 frameFractions: (0@0 corner: 1@1).
	unnamedMorph3 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph3 balloonText: (nil).
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph3 text: ('Label').
	unnamedMorph3 setProperty: #formByDesigner toValue: 'UiSilkIcons packageIcon'.
	unnamedMorph3 form: (UiSilkIcons packageIcon).
	unnamedMorph1 addChild: unnamedMorph3.
	packageNameEdit := UiLineEdit new.
	packageNameEdit extent: (140@20).
	packageNameEdit position: (655@9).
	packageNameEdit hResizing: (#rigid).
	packageNameEdit vResizing: (#rigid).
	packageNameEdit minWidth: (2).
	packageNameEdit minHeight: (2).
	packageNameEdit cellInset: (0).
	packageNameEdit cellPositioning: (#center).
	packageNameEdit cellSpacing: (#none).
	packageNameEdit layoutInset: (0).
	packageNameEdit listCentering: (#topLeft).
	packageNameEdit listDirection: (#topToBottom).
	packageNameEdit listSpacing: (#none).
	packageNameEdit maxCellSize: (1073741823).
	packageNameEdit minCellSize: (0).
	packageNameEdit wrapCentering: (#topLeft).
	packageNameEdit wrapDirection: (#none).
	packageNameEdit frameFractions: (0@0 corner: 1@1).
	packageNameEdit frameOffsets: (0@0 corner: 0@0).
	packageNameEdit balloonText: (nil).
	packageNameEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	packageNameEdit widgetResizable: (false).
	packageNameEdit horizontalScrollBarPolicy: (#alwaysOff).
	packageNameEdit verticalScrollBarPolicy: (#alwaysOff).
	packageNameEdit outerBorderWidth: (1).
	packageNameEdit scrollBarThickness: (9).
	packageNameEdit theText: ('').
	packageNameEdit readOnly: (false).
	packageNameEdit autoConvert: (false).
	packageNameEdit autoAccept: (false).
	packageNameEdit acceptOnFocusLost: (true).
	packageNameEdit scrollingMode: (#none).
	packageNameEdit scrollingLimit: (10).
	packageNameEdit helpText: ('Type target package...').
	packageNameEdit hideCursor: (true).
	packageNameEdit setProperty: #objectName toValue: 'packageNameEdit'.
	unnamedMorph1 addChild: packageNameEdit.
	panel addChild: unnamedMorph1.
	prop := UiContainer new.
	prop changeProportionalLayout.
	prop extent: (800@558).
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
	centralScroller := UiScrollArea new.
	centralScroller extent: (800@558).
	centralScroller position: (0@42).
	centralScroller hResizing: (#spaceFill).
	centralScroller vResizing: (#spaceFill).
	centralScroller minWidth: (2).
	centralScroller minHeight: (2).
	centralScroller cellInset: (0).
	centralScroller cellPositioning: (#center).
	centralScroller cellSpacing: (#none).
	centralScroller layoutInset: (0).
	centralScroller listCentering: (#topLeft).
	centralScroller listDirection: (#topToBottom).
	centralScroller listSpacing: (#none).
	centralScroller maxCellSize: (1073741823).
	centralScroller minCellSize: (0).
	centralScroller wrapCentering: (#topLeft).
	centralScroller wrapDirection: (#none).
	centralScroller frameFractions: (0@0 corner: 1@1).
	centralScroller frameOffsets: (0@0 corner: 0@0).
	centralScroller balloonText: (nil).
	centralScroller balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	centralScroller widgetResizable: (false).
	centralScroller horizontalScrollBarPolicy: (#asNeeded).
	centralScroller verticalScrollBarPolicy: (#asNeeded).
	centralScroller outerBorderWidth: (0).
	centralScroller scrollBarThickness: (9).
	centralScroller setProperty: #objectName toValue: 'centralScroller'.
	prop addChild: centralScroller.
	panel addChild: prop.
	panel setProperty: #uiClassName toValue: 'UiDesigner'.