ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 unnamedMorph4 unnamedMorph5 unnamedMorph6 unnamedMorph7 |
	
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	emailDialog := UiLineEdit new.
	emailDialog extent: (76@20).
	emailDialog position: (104@177).
	emailDialog hResizing: (#spaceFill).
	emailDialog vResizing: (#rigid).
	emailDialog minWidth: (2).
	emailDialog minHeight: (2).
	emailDialog cellInset: (0).
	emailDialog cellPositioning: (#center).
	emailDialog cellSpacing: (#none).
	emailDialog layoutInset: (0).
	emailDialog listCentering: (#topLeft).
	emailDialog listDirection: (#topToBottom).
	emailDialog listSpacing: (#none).
	emailDialog maxCellSize: (1073741823).
	emailDialog minCellSize: (0).
	emailDialog wrapCentering: (#topLeft).
	emailDialog wrapDirection: (#none).
	emailDialog frameFractions: (0@0 corner: 1@1).
	emailDialog frameOffsets: (0@0 corner: 0@0).
	emailDialog balloonText: (nil).
	emailDialog balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	emailDialog widgetResizable: (false).
	emailDialog horizontalScrollBarPolicy: (#alwaysOff).
	emailDialog verticalScrollBarPolicy: (#alwaysOff).
	emailDialog outerBorderWidth: (1).
	emailDialog scrollBarThickness: (9).
	emailDialog theText: ('').
	emailDialog readOnly: (false).
	emailDialog autoConvert: (false).
	emailDialog autoAccept: (false).
	emailDialog acceptOnFocusLost: (true).
	emailDialog scrollingMode: (#none).
	emailDialog scrollingLimit: (10).
	emailDialog helpText: ('').
	emailDialog hideCursor: (true).
	emailDialog setProperty: #objectName toValue: 'emailDialog'.
	panel addChild: emailDialog.
	listWidget := UiListWidget new.
	listWidget extent: (229@220).
	listWidget position: (206@52).
	listWidget hResizing: (#rigid).
	listWidget vResizing: (#rigid).
	listWidget minWidth: (2).
	listWidget minHeight: (2).
	listWidget cellInset: (0).
	listWidget cellPositioning: (#center).
	listWidget cellSpacing: (#none).
	listWidget layoutInset: (0).
	listWidget listCentering: (#topLeft).
	listWidget listDirection: (#topToBottom).
	listWidget listSpacing: (#none).
	listWidget maxCellSize: (1073741823).
	listWidget minCellSize: (0).
	listWidget wrapCentering: (#topLeft).
	listWidget wrapDirection: (#none).
	listWidget frameFractions: (0@0 corner: 1@1).
	listWidget frameOffsets: (0@0 corner: 0@0).
	listWidget balloonText: (nil).
	listWidget balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	listWidget widgetResizable: (true).
	listWidget horizontalScrollBarPolicy: (#alwaysOff).
	listWidget verticalScrollBarPolicy: (#asNeeded).
	listWidget outerBorderWidth: (0).
	listWidget scrollBarThickness: (9).
	listWidget modelClass: (UiPropertyItemNode).
	listWidget horizontalHeaderVisible: (false).
	listWidget verticalHeaderVisible: (false).
	listWidget selectionBehavior: (#selectRows).
	listWidget selectionMode: (UiViewSingleSelection).
	listWidget listOrientation: (#default).
	listWidget hAlignment: (#left).
	listWidget vAlignment: (#top).
	listWidget setProperty: #objectName toValue: 'listWidget'.
	panel addChild: listWidget.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 extent: (194@221).
	unnamedMorph1 position: (-1@52).
	unnamedMorph1 hResizing: (#rigid).
	unnamedMorph1 vResizing: (#rigid).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#topToBottom).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	removeButton := UiPushButton new.
	removeButton changeTableLayout.
	removeButton extent: (54@36).
	removeButton position: (32@218).
	removeButton hResizing: (#rigid).
	removeButton vResizing: (#rigid).
	removeButton minWidth: (2).
	removeButton minHeight: (2).
	removeButton cellInset: (4).
	removeButton cellPositioning: (#center).
	removeButton cellSpacing: (#none).
	removeButton layoutInset: (2@0 corner: 2@0).
	removeButton listCentering: (#topLeft).
	removeButton listDirection: (#leftToRight).
	removeButton listSpacing: (#none).
	removeButton maxCellSize: (1073741823).
	removeButton minCellSize: (0).
	removeButton wrapCentering: (#topLeft).
	removeButton wrapDirection: (#none).
	removeButton frameFractions: (0@0 corner: 1@1).
	removeButton frameOffsets: (0@0 corner: 0@0).
	removeButton balloonText: (nil).
	removeButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	removeButton enabled: (true).
	removeButton setProperty: #iconByDesigner toValue: 'nil'.
	removeButton icon: (nil).
	removeButton text: ('save').
	removeButton color: ((Color r: 0.8 g: 0.0 b: 0.0)).
	removeButton checkable: (false).
	removeButton checked: (false).
	removeButton autoExclusive: (false).
	removeButton setProperty: #objectName toValue: 'removeButton'.
	unnamedMorph1 addChild: removeButton.
	saveButton := UiPushButton new.
	saveButton changeTableLayout.
	saveButton extent: (54@36).
	saveButton position: (114@219).
	saveButton hResizing: (#rigid).
	saveButton vResizing: (#rigid).
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
	saveButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	saveButton enabled: (true).
	saveButton setProperty: #iconByDesigner toValue: 'nil'.
	saveButton icon: (nil).
	saveButton text: ('save').
	saveButton color: ((Color r: 0.0 g: 0.8 b: 0.0)).
	saveButton checkable: (false).
	saveButton checked: (false).
	saveButton autoExclusive: (false).
	saveButton setProperty: #objectName toValue: 'saveButton'.
	unnamedMorph1 addChild: saveButton.
	unnamedMorph2 := UiLabel new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (34@18).
	unnamedMorph2 position: (28@176).
	unnamedMorph2 hResizing: (#shrinkWrap).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (0).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (0).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#leftToRight).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	unnamedMorph2 text: ('E-Mail').
	unnamedMorph2 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph2 form: (nil).
	unnamedMorph1 addChild: unnamedMorph2.
	unnamedMorph3 := UiLabel new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (63@18).
	unnamedMorph3 position: (26@64).
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
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	unnamedMorph3 text: ('first Name').
	unnamedMorph3 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph3 form: (nil).
	unnamedMorph1 addChild: unnamedMorph3.
	unnamedMorph4 := UiLabel new.
	unnamedMorph4 changeTableLayout.
	unnamedMorph4 extent: (46@18).
	unnamedMorph4 position: (27@148).
	unnamedMorph4 hResizing: (#shrinkWrap).
	unnamedMorph4 vResizing: (#shrinkWrap).
	unnamedMorph4 minWidth: (2).
	unnamedMorph4 minHeight: (2).
	unnamedMorph4 cellInset: (0).
	unnamedMorph4 cellPositioning: (#center).
	unnamedMorph4 cellSpacing: (#none).
	unnamedMorph4 layoutInset: (0).
	unnamedMorph4 listCentering: (#topLeft).
	unnamedMorph4 listDirection: (#leftToRight).
	unnamedMorph4 listSpacing: (#none).
	unnamedMorph4 maxCellSize: (1073741823).
	unnamedMorph4 minCellSize: (0).
	unnamedMorph4 wrapCentering: (#topLeft).
	unnamedMorph4 wrapDirection: (#none).
	unnamedMorph4 frameFractions: (0@0 corner: 1@1).
	unnamedMorph4 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph4 balloonText: (nil).
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	unnamedMorph4 text: ('number').
	unnamedMorph4 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph4 form: (nil).
	unnamedMorph1 addChild: unnamedMorph4.
	unnamedMorph5 := UiLabel new.
	unnamedMorph5 changeTableLayout.
	unnamedMorph5 extent: (22@18).
	unnamedMorph5 position: (26@118).
	unnamedMorph5 hResizing: (#shrinkWrap).
	unnamedMorph5 vResizing: (#shrinkWrap).
	unnamedMorph5 minWidth: (2).
	unnamedMorph5 minHeight: (2).
	unnamedMorph5 cellInset: (0).
	unnamedMorph5 cellPositioning: (#center).
	unnamedMorph5 cellSpacing: (#none).
	unnamedMorph5 layoutInset: (0).
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
	unnamedMorph5 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.725)).
	unnamedMorph5 text: ('city').
	unnamedMorph5 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph5 form: (nil).
	unnamedMorph1 addChild: unnamedMorph5.
	unnamedMorph6 := UiLabel new.
	unnamedMorph6 changeTableLayout.
	unnamedMorph6 extent: (59@18).
	unnamedMorph6 position: (27@89).
	unnamedMorph6 hResizing: (#shrinkWrap).
	unnamedMorph6 vResizing: (#shrinkWrap).
	unnamedMorph6 minWidth: (2).
	unnamedMorph6 minHeight: (2).
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
	unnamedMorph6 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	unnamedMorph6 text: ('last name').
	unnamedMorph6 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph6 form: (nil).
	unnamedMorph1 addChild: unnamedMorph6.
	numberDialog := UiLineEdit new.
	numberDialog extent: (76@20).
	numberDialog position: (103@145).
	numberDialog hResizing: (#spaceFill).
	numberDialog vResizing: (#rigid).
	numberDialog minWidth: (2).
	numberDialog minHeight: (2).
	numberDialog cellInset: (0).
	numberDialog cellPositioning: (#center).
	numberDialog cellSpacing: (#none).
	numberDialog layoutInset: (0).
	numberDialog listCentering: (#topLeft).
	numberDialog listDirection: (#topToBottom).
	numberDialog listSpacing: (#none).
	numberDialog maxCellSize: (1073741823).
	numberDialog minCellSize: (0).
	numberDialog wrapCentering: (#topLeft).
	numberDialog wrapDirection: (#none).
	numberDialog frameFractions: (0@0 corner: 1@1).
	numberDialog frameOffsets: (0@0 corner: 0@0).
	numberDialog balloonText: (nil).
	numberDialog balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	numberDialog widgetResizable: (false).
	numberDialog horizontalScrollBarPolicy: (#alwaysOff).
	numberDialog verticalScrollBarPolicy: (#alwaysOff).
	numberDialog outerBorderWidth: (1).
	numberDialog scrollBarThickness: (9).
	numberDialog theText: ('').
	numberDialog readOnly: (false).
	numberDialog autoConvert: (false).
	numberDialog autoAccept: (false).
	numberDialog acceptOnFocusLost: (true).
	numberDialog scrollingMode: (#none).
	numberDialog scrollingLimit: (10).
	numberDialog helpText: ('').
	numberDialog hideCursor: (true).
	numberDialog setProperty: #objectName toValue: 'numberDialog'.
	unnamedMorph1 addChild: numberDialog.
	cityDialog := UiLineEdit new.
	cityDialog extent: (76@20).
	cityDialog position: (103@117).
	cityDialog hResizing: (#spaceFill).
	cityDialog vResizing: (#rigid).
	cityDialog minWidth: (2).
	cityDialog minHeight: (2).
	cityDialog cellInset: (0).
	cityDialog cellPositioning: (#center).
	cityDialog cellSpacing: (#none).
	cityDialog layoutInset: (0).
	cityDialog listCentering: (#topLeft).
	cityDialog listDirection: (#topToBottom).
	cityDialog listSpacing: (#none).
	cityDialog maxCellSize: (1073741823).
	cityDialog minCellSize: (0).
	cityDialog wrapCentering: (#topLeft).
	cityDialog wrapDirection: (#none).
	cityDialog frameFractions: (0@0 corner: 1@1).
	cityDialog frameOffsets: (0@0 corner: 0@0).
	cityDialog balloonText: (nil).
	cityDialog balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	cityDialog widgetResizable: (false).
	cityDialog horizontalScrollBarPolicy: (#alwaysOff).
	cityDialog verticalScrollBarPolicy: (#alwaysOff).
	cityDialog outerBorderWidth: (1).
	cityDialog scrollBarThickness: (9).
	cityDialog theText: ('').
	cityDialog readOnly: (false).
	cityDialog autoConvert: (false).
	cityDialog autoAccept: (false).
	cityDialog acceptOnFocusLost: (true).
	cityDialog scrollingMode: (#none).
	cityDialog scrollingLimit: (10).
	cityDialog helpText: ('').
	cityDialog hideCursor: (true).
	cityDialog setProperty: #objectName toValue: 'cityDialog'.
	unnamedMorph1 addChild: cityDialog.
	lastNameDialog := UiLineEdit new.
	lastNameDialog extent: (76@20).
	lastNameDialog position: (103@88).
	lastNameDialog hResizing: (#spaceFill).
	lastNameDialog vResizing: (#rigid).
	lastNameDialog minWidth: (2).
	lastNameDialog minHeight: (2).
	lastNameDialog cellInset: (0).
	lastNameDialog cellPositioning: (#center).
	lastNameDialog cellSpacing: (#none).
	lastNameDialog layoutInset: (0).
	lastNameDialog listCentering: (#topLeft).
	lastNameDialog listDirection: (#topToBottom).
	lastNameDialog listSpacing: (#none).
	lastNameDialog maxCellSize: (1073741823).
	lastNameDialog minCellSize: (0).
	lastNameDialog wrapCentering: (#topLeft).
	lastNameDialog wrapDirection: (#none).
	lastNameDialog frameFractions: (0@0 corner: 1@1).
	lastNameDialog frameOffsets: (0@0 corner: 0@0).
	lastNameDialog balloonText: (nil).
	lastNameDialog balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	lastNameDialog widgetResizable: (false).
	lastNameDialog horizontalScrollBarPolicy: (#alwaysOff).
	lastNameDialog verticalScrollBarPolicy: (#alwaysOff).
	lastNameDialog outerBorderWidth: (1).
	lastNameDialog scrollBarThickness: (9).
	lastNameDialog theText: ('').
	lastNameDialog readOnly: (false).
	lastNameDialog autoConvert: (false).
	lastNameDialog autoAccept: (false).
	lastNameDialog acceptOnFocusLost: (true).
	lastNameDialog scrollingMode: (#none).
	lastNameDialog scrollingLimit: (10).
	lastNameDialog helpText: ('').
	lastNameDialog hideCursor: (true).
	lastNameDialog setProperty: #objectName toValue: 'lastNameDialog'.
	unnamedMorph1 addChild: lastNameDialog.
	firstNameDialog := UiLineEdit new.
	firstNameDialog extent: (76@20).
	firstNameDialog position: (103@62).
	firstNameDialog hResizing: (#spaceFill).
	firstNameDialog vResizing: (#rigid).
	firstNameDialog minWidth: (2).
	firstNameDialog minHeight: (2).
	firstNameDialog cellInset: (0).
	firstNameDialog cellPositioning: (#center).
	firstNameDialog cellSpacing: (#none).
	firstNameDialog layoutInset: (0).
	firstNameDialog listCentering: (#topLeft).
	firstNameDialog listDirection: (#topToBottom).
	firstNameDialog listSpacing: (#none).
	firstNameDialog maxCellSize: (1073741823).
	firstNameDialog minCellSize: (0).
	firstNameDialog wrapCentering: (#topLeft).
	firstNameDialog wrapDirection: (#none).
	firstNameDialog frameFractions: (0@0 corner: 1@1).
	firstNameDialog frameOffsets: (0@0 corner: 0@0).
	firstNameDialog balloonText: (nil).
	firstNameDialog balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	firstNameDialog widgetResizable: (false).
	firstNameDialog horizontalScrollBarPolicy: (#alwaysOff).
	firstNameDialog verticalScrollBarPolicy: (#alwaysOff).
	firstNameDialog outerBorderWidth: (1).
	firstNameDialog scrollBarThickness: (9).
	firstNameDialog theText: ('').
	firstNameDialog readOnly: (false).
	firstNameDialog autoConvert: (false).
	firstNameDialog autoAccept: (false).
	firstNameDialog acceptOnFocusLost: (true).
	firstNameDialog scrollingMode: (#none).
	firstNameDialog scrollingLimit: (10).
	firstNameDialog helpText: ('').
	firstNameDialog hideCursor: (true).
	firstNameDialog setProperty: #objectName toValue: 'firstNameDialog'.
	unnamedMorph1 addChild: firstNameDialog.
	panel addChild: unnamedMorph1.
	unnamedMorph7 := UiLabel new.
	unnamedMorph7 changeTableLayout.
	unnamedMorph7 extent: (56@16).
	unnamedMorph7 position: (233@19).
	unnamedMorph7 hResizing: (#rigid).
	unnamedMorph7 vResizing: (#rigid).
	unnamedMorph7 minWidth: (2).
	unnamedMorph7 minHeight: (2).
	unnamedMorph7 cellInset: (0).
	unnamedMorph7 cellPositioning: (#center).
	unnamedMorph7 cellSpacing: (#none).
	unnamedMorph7 layoutInset: (0).
	unnamedMorph7 listCentering: (#topLeft).
	unnamedMorph7 listDirection: (#leftToRight).
	unnamedMorph7 listSpacing: (#none).
	unnamedMorph7 maxCellSize: (1073741823).
	unnamedMorph7 minCellSize: (0).
	unnamedMorph7 wrapCentering: (#topLeft).
	unnamedMorph7 wrapDirection: (#none).
	unnamedMorph7 frameFractions: (0@0 corner: 1@1).
	unnamedMorph7 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph7 balloonText: (nil).
	unnamedMorph7 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	unnamedMorph7 text: ('Contacts').
	unnamedMorph7 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph7 form: (nil).
	panel addChild: unnamedMorph7.
	panel setProperty: #uiClassName toValue: 'UIContactDemo'.