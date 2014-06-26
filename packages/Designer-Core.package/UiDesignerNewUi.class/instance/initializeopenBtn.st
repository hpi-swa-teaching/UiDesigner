ui - private
initializeopenBtn
		
	
	| openBtn |
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
	openBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
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
	^ openBtn.