ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (800@600).
	panel position: (0@0).
	panel hResizing: (#spaceFill).
	panel vResizing: (#spaceFill).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	panel color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	panel setProperty: #objectDescription toValue: 'This is the user interface layout for the morphic designer.'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (800@41).
	unnamedMorph1 position: (0@0).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color red).
	newBtn := UiToolButton new.
	newBtn changeTableLayout.
	newBtn extent: (32@41).
	newBtn position: (4@0).
	newBtn hResizing: (#shrinkWrap).
	newBtn vResizing: (#shrinkWrap).
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
	newBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
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
	unnamedMorph1 addMorphBack: newBtn.
	openBtn := UiToolButton new.
	openBtn changeTableLayout.
	openBtn extent: (37@41).
	openBtn position: (40@0).
	openBtn hResizing: (#shrinkWrap).
	openBtn vResizing: (#shrinkWrap).
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
	openBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
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
	unnamedMorph1 addMorphBack: openBtn.
	saveBtn := UiToolButton new.
	saveBtn changeTableLayout.
	saveBtn extent: (32@41).
	saveBtn position: (81@0).
	saveBtn hResizing: (#shrinkWrap).
	saveBtn vResizing: (#shrinkWrap).
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
	saveBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
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
	unnamedMorph1 addMorphBack: saveBtn.
	unnamedMorph2 := UiSpacer new.
	unnamedMorph2 extent: (513@20).
	unnamedMorph2 position: (117@10).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#rigid).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	unnamedMorph2 color: (Color blue).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph2 orientation: (#horizontal).
	unnamedMorph1 addMorphBack: unnamedMorph2.
	unnamedMorph3 := UiLabel new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (16@16).
	unnamedMorph3 position: (634@12).
	unnamedMorph3 hResizing: (#shrinkWrap).
	unnamedMorph3 vResizing: (#shrinkWrap).
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
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	unnamedMorph3 text: ('Label').
	unnamedMorph3 setProperty: #formByDesigner toValue: 'UiSilkIcons packageIcon'.
	unnamedMorph3 form: (UiSilkIcons packageIcon).
	unnamedMorph1 addMorphBack: unnamedMorph3.
	packageNameEdit := UiLineEdit new.
	packageNameEdit extent: (140@20).
	packageNameEdit position: (655@10).
	packageNameEdit hResizing: (#rigid).
	packageNameEdit vResizing: (#rigid).
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
	packageNameEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	packageNameEdit theText: (nil).
	packageNameEdit readOnly: (false).
	packageNameEdit outerBorderWidth: (1).
	packageNameEdit autoConvert: (false).
	packageNameEdit autoAccept: (false).
	packageNameEdit helpText: ('Type target package...').
	packageNameEdit setProperty: #objectName toValue: 'packageNameEdit'.
	unnamedMorph1 addMorphBack: packageNameEdit.
	panel addMorphBack: unnamedMorph1.
	prop := UiContainer new.
	prop changeProportionalLayout.
	prop extent: (800@555).
	prop position: (0@45).
	prop hResizing: (#spaceFill).
	prop vResizing: (#spaceFill).
	prop cellInset: (10).
	prop cellPositioning: (#center).
	prop cellSpacing: (#none).
	prop layoutInset: (0@0 corner: 0@5).
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
	prop balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	prop color: (Color transparent).
	prop borderWidth: (0).
	prop borderStyle2: (#simple).
	prop borderColor: (Color black).
	prop setProperty: #objectName toValue: 'prop'.
	propertyScroller := UiPropertyTableScroller new.
	propertyScroller extent: (200@550).
	propertyScroller position: (600@45).
	propertyScroller hResizing: (#spaceFill).
	propertyScroller vResizing: (#spaceFill).
	propertyScroller cellInset: (0).
	propertyScroller cellPositioning: (#center).
	propertyScroller cellSpacing: (#none).
	propertyScroller layoutInset: (0).
	propertyScroller listCentering: (#topLeft).
	propertyScroller listDirection: (#topToBottom).
	propertyScroller listSpacing: (#none).
	propertyScroller maxCellSize: (1073741823).
	propertyScroller minCellSize: (0).
	propertyScroller wrapCentering: (#topLeft).
	propertyScroller wrapDirection: (#none).
	propertyScroller frameFractions: (0.75@0 corner: 1@1).
	propertyScroller frameOffsets: (0@0 corner: 0@0).
	propertyScroller balloonText: (nil).
	propertyScroller balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	propertyScroller setProperty: #objectName toValue: 'propertyScroller'.
	prop addMorphBack: propertyScroller.
	unnamedMorph4 := UiContainer new.
	unnamedMorph4 changeTableLayout.
	unnamedMorph4 extent: (184@550).
	unnamedMorph4 position: (0@45).
	unnamedMorph4 hResizing: (#spaceFill).
	unnamedMorph4 vResizing: (#spaceFill).
	unnamedMorph4 cellInset: (4).
	unnamedMorph4 cellPositioning: (#center).
	unnamedMorph4 cellSpacing: (#none).
	unnamedMorph4 layoutInset: (0).
	unnamedMorph4 listCentering: (#topLeft).
	unnamedMorph4 listDirection: (#topToBottom).
	unnamedMorph4 listSpacing: (#none).
	unnamedMorph4 maxCellSize: (1073741823).
	unnamedMorph4 minCellSize: (0).
	unnamedMorph4 wrapCentering: (#topLeft).
	unnamedMorph4 wrapDirection: (#none).
	unnamedMorph4 frameFractions: (0@0 corner: 0.23@1).
	unnamedMorph4 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph4 balloonText: (nil).
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	unnamedMorph4 color: (Color transparent).
	unnamedMorph4 borderWidth: (0).
	unnamedMorph4 borderStyle2: (#simple).
	unnamedMorph4 borderColor: (Color black).
	widgetList := UiTreeView new.
	widgetList extent: (184@524).
	widgetList position: (0@45).
	widgetList hResizing: (#spaceFill).
	widgetList vResizing: (#spaceFill).
	widgetList cellInset: (0).
	widgetList cellPositioning: (#center).
	widgetList cellSpacing: (#none).
	widgetList layoutInset: (0).
	widgetList listCentering: (#topLeft).
	widgetList listDirection: (#topToBottom).
	widgetList listSpacing: (#none).
	widgetList maxCellSize: (1073741823).
	widgetList minCellSize: (0).
	widgetList wrapCentering: (#topLeft).
	widgetList wrapDirection: (#none).
	widgetList frameFractions: (0@0 corner: 1@1).
	widgetList frameOffsets: (0@0 corner: 0@0).
	widgetList balloonText: (nil).
	widgetList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	widgetList modelClass: UiWidgetModel.
	widgetList horizontalHeaderVisible: (false).
	widgetList verticalHeaderVisible: (false).
	widgetList setProperty: #objectName toValue: 'widgetList'.
	unnamedMorph4 addMorphBack: widgetList.
	unnamedMorph5 := UiContainer new.
	unnamedMorph5 changeTableLayout.
	unnamedMorph5 extent: (184@22).
	unnamedMorph5 position: (0@573).
	unnamedMorph5 hResizing: (#spaceFill).
	unnamedMorph5 vResizing: (#shrinkWrap).
	unnamedMorph5 cellInset: (4).
	unnamedMorph5 cellPositioning: (#center).
	unnamedMorph5 cellSpacing: (#none).
	unnamedMorph5 layoutInset: (0@0 corner: 5@0).
	unnamedMorph5 listCentering: (#topLeft).
	unnamedMorph5 listDirection: (#leftToRight).
	unnamedMorph5 listSpacing: (#none).
	unnamedMorph5 maxCellSize: (1073741823).
	unnamedMorph5 minCellSize: (0).
	unnamedMorph5 wrapCentering: (#topLeft).
	unnamedMorph5 wrapDirection: (#none).
	unnamedMorph5 frameFractions: (0@0 corner: 1@1).
	unnamedMorph5 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph5 balloonText: (nil).
	unnamedMorph5 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	unnamedMorph5 color: (Color transparent).
	unnamedMorph5 borderWidth: (0).
	unnamedMorph5 borderStyle2: (#simple).
	unnamedMorph5 borderColor: (Color black).
	unnamedMorph6 := UiLabel new.
	unnamedMorph6 changeTableLayout.
	unnamedMorph6 extent: (16@16).
	unnamedMorph6 position: (0@576).
	unnamedMorph6 hResizing: (#shrinkWrap).
	unnamedMorph6 vResizing: (#shrinkWrap).
	unnamedMorph6 cellInset: (0).
	unnamedMorph6 cellPositioning: (#center).
	unnamedMorph6 cellSpacing: (#none).
	unnamedMorph6 layoutInset: (0).
	unnamedMorph6 listCentering: (#topLeft).
	unnamedMorph6 listDirection: (#leftToRight).
	unnamedMorph6 listSpacing: (#none).
	unnamedMorph6 maxCellSize: (1073741823).
	unnamedMorph6 minCellSize: (0).
	unnamedMorph6 wrapCentering: (#topLeft).
	unnamedMorph6 wrapDirection: (#none).
	unnamedMorph6 frameFractions: (0@0 corner: 1@1).
	unnamedMorph6 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph6 balloonText: (nil).
	unnamedMorph6 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	unnamedMorph6 text: ('Label').
	unnamedMorph6 setProperty: #formByDesigner toValue: 'UiFugueIcons magnifierMediumIcon'.
	unnamedMorph6 form: (UiFugueIcons magnifierMediumIcon).
	unnamedMorph5 addMorphBack: unnamedMorph6.
	filterEdit := UiLineEdit new.
	filterEdit extent: (159@20).
	filterEdit position: (20@574).
	filterEdit hResizing: (#spaceFill).
	filterEdit vResizing: (#rigid).
	filterEdit cellInset: (0).
	filterEdit cellPositioning: (#center).
	filterEdit cellSpacing: (#none).
	filterEdit layoutInset: (0).
	filterEdit listCentering: (#topLeft).
	filterEdit listDirection: (#topToBottom).
	filterEdit listSpacing: (#none).
	filterEdit maxCellSize: (1073741823).
	filterEdit minCellSize: (0).
	filterEdit wrapCentering: (#topLeft).
	filterEdit wrapDirection: (#none).
	filterEdit frameFractions: (0@0 corner: 1@1).
	filterEdit frameOffsets: (0@0 corner: 0@0).
	filterEdit balloonText: (nil).
	filterEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	filterEdit theText: (nil).
	filterEdit readOnly: (false).
	filterEdit outerBorderWidth: (1).
	filterEdit autoConvert: (false).
	filterEdit autoAccept: (false).
	filterEdit helpText: ('Search...').
	filterEdit setProperty: #objectName toValue: 'filterEdit'.
	unnamedMorph5 addMorphBack: filterEdit.
	unnamedMorph4 addMorphBack: unnamedMorph5.
	prop addMorphBack: unnamedMorph4.
	centralScroller := UiScrollArea new.
	centralScroller extent: (416@550).
	centralScroller position: (184@45).
	centralScroller hResizing: (#spaceFill).
	centralScroller vResizing: (#spaceFill).
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
	centralScroller frameFractions: (0.23@0 corner: 0.75@1).
	centralScroller frameOffsets: (0@0 corner: 0@0).
	centralScroller balloonText: (nil).
	centralScroller balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	centralScroller setProperty: #objectName toValue: 'centralScroller'.
	centralScroller horizontalScrollBarPolicy: #asNeeded.  
	centralScroller verticalScrollBarPolicy: #asNeeded.
	prop addMorphBack: centralScroller.
	panel addMorphBack: prop.
	panel setProperty: #uiClassName toValue: 'UiDesigner'.