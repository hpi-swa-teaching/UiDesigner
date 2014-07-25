ui - private
initializeUiOpenBtn
		
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	openBtn := UiPushButton new.
	openBtn changeTableLayout.
	openBtn extent: (192@20).
	openBtn position: (34@246).
	openBtn hResizing: (#spaceFill).
	openBtn vResizing: (#shrinkWrap).
	openBtn minWidth: (2).
	openBtn minHeight: (2).
	openBtn cellInset: (4).
	openBtn cellPositioning: (#center).
	openBtn cellSpacing: (#none).
	openBtn layoutInset: (2@0 corner: 2@0).
	openBtn listCentering: (#topLeft).
	openBtn listDirection: (#leftToRight).
	openBtn listSpacing: (#none).
	openBtn maxCellSize: (1073741823).
	openBtn minCellSize: (0).
	openBtn wrapCentering: (#topLeft).
	openBtn wrapDirection: (#none).
	openBtn frameFractions: (0@0 corner: 1@1).
	openBtn frameOffsets: (0@0 corner: 0@0).
	openBtn balloonText: (nil).
	openBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	openBtn enabled: (true).
	openBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons folderIcon'.
	openBtn icon: (UiSilkIcons folderIcon).
	openBtn text: ('Open Design...').
	openBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	openBtn checkable: (false).
	openBtn checked: (false).
	openBtn autoExclusive: (false).
	openBtn setProperty: #objectName toValue: 'openBtn'.
	^ openBtn