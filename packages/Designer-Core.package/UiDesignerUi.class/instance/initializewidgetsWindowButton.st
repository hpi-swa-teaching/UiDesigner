ui - private
initializewidgetsWindowButton
		
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
	^ widgetsWindowButton.