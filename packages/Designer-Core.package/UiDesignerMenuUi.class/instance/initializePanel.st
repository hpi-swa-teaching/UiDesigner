ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel extent: (500@300).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	panel color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	panel borderWidth: (1).
	panel borderStyle2: (#simple).
	panel borderColor: (Color gray).
	panel setProperty: #objectName toValue: 'panel'.
	titleLbl := UiLabel new.
	titleLbl changeTableLayout.
	titleLbl extent: (94@19).
	titleLbl position: (156@24).
	titleLbl hResizing: (#shrinkWrap).
	titleLbl vResizing: (#shrinkWrap).
	titleLbl cellInset: (0).
	titleLbl cellPositioning: (#center).
	titleLbl cellSpacing: (#none).
	titleLbl layoutInset: (0).
	titleLbl listCentering: (#topLeft).
	titleLbl listDirection: (#leftToRight).
	titleLbl listSpacing: (#none).
	titleLbl maxCellSize: (1073741823).
	titleLbl minCellSize: (0).
	titleLbl wrapCentering: (#topLeft).
	titleLbl wrapDirection: (#none).
	titleLbl frameFractions: (0@0 corner: 1@1).
	titleLbl frameOffsets: (0@0 corner: 0@0).
	titleLbl balloonText: (nil).
	titleLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	titleLbl text: ('Morphic Designer').
	titleLbl setProperty: #formByDesigner toValue: 'nil'.
	titleLbl form: (nil).
	titleLbl setProperty: #objectName toValue: 'titleLbl'.
	panel addMorphBack: titleLbl.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (200@160).
	unnamedMorph1 position: (30@110).
	unnamedMorph1 hResizing: (#rigid).
	unnamedMorph1 vResizing: (#rigid).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#topLeft).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	unnamedMorph1 color: ((TranslucentColor r: 0.6 g: 0.6 b: 0.6 alpha: 0.2)).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	recentLbl := UiLabel new.
	recentLbl changeTableLayout.
	recentLbl extent: (83@19).
	recentLbl position: (34@114).
	recentLbl hResizing: (#shrinkWrap).
	recentLbl vResizing: (#shrinkWrap).
	recentLbl cellInset: (0).
	recentLbl cellPositioning: (#center).
	recentLbl cellSpacing: (#none).
	recentLbl layoutInset: (0).
	recentLbl listCentering: (#topLeft).
	recentLbl listDirection: (#leftToRight).
	recentLbl listSpacing: (#none).
	recentLbl maxCellSize: (1073741823).
	recentLbl minCellSize: (0).
	recentLbl wrapCentering: (#topLeft).
	recentLbl wrapDirection: (#none).
	recentLbl frameFractions: (0@0 corner: 1@1).
	recentLbl frameOffsets: (0@0 corner: 0@0).
	recentLbl balloonText: (nil).
	recentLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	recentLbl text: ('Recent Designs:').
	recentLbl setProperty: #formByDesigner toValue: 'nil'.
	recentLbl form: (nil).
	recentLbl setProperty: #objectName toValue: 'recentLbl'.
	unnamedMorph1 addMorphBack: recentLbl.
	recentList := UiListWidget new.
	recentList extent: (192@104).
	recentList position: (34@137).
	recentList hResizing: (#spaceFill).
	recentList vResizing: (#spaceFill).
	recentList cellInset: (0).
	recentList cellPositioning: (#center).
	recentList cellSpacing: (#none).
	recentList layoutInset: (0).
	recentList listCentering: (#topLeft).
	recentList listDirection: (#topToBottom).
	recentList listSpacing: (#none).
	recentList maxCellSize: (1073741823).
	recentList minCellSize: (0).
	recentList wrapCentering: (#topLeft).
	recentList wrapDirection: (#none).
	recentList frameFractions: (0@0 corner: 1@1).
	recentList frameOffsets: (0@0 corner: 0@0).
	recentList balloonText: ('').
	recentList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	recentList horizontalHeaderVisible: (false).
	recentList verticalHeaderVisible: (false).
	recentList setProperty: #objectName toValue: 'recentList'.
	unnamedMorph1 addMorphBack: recentList.
	openBtn := UiPushButton new.
	openBtn changeTableLayout.
	openBtn extent: (192@21).
	openBtn position: (34@245).
	openBtn hResizing: (#spaceFill).
	openBtn vResizing: (#shrinkWrap).
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
	openBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	openBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons folderIcon'.
	openBtn icon: (UiSilkIcons folderIcon).
	openBtn text: ('Open Design...').
	openBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	openBtn checkable: (false).
	openBtn checked: (false).
	openBtn autoExclusive: (false).
	openBtn setProperty: #objectName toValue: 'openBtn'.
	unnamedMorph1 addMorphBack: openBtn.
	panel addMorphBack: unnamedMorph1.
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (200@160).
	unnamedMorph2 position: (266@110).
	unnamedMorph2 hResizing: (#rigid).
	unnamedMorph2 vResizing: (#rigid).
	unnamedMorph2 cellInset: (4).
	unnamedMorph2 cellPositioning: (#topLeft).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	unnamedMorph2 color: ((TranslucentColor r: 0.6 g: 0.6 b: 0.6 alpha: 0.2)).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	templateLbl := UiLabel new.
	templateLbl changeTableLayout.
	templateLbl extent: (97@19).
	templateLbl position: (270@114).
	templateLbl hResizing: (#shrinkWrap).
	templateLbl vResizing: (#shrinkWrap).
	templateLbl cellInset: (0).
	templateLbl cellPositioning: (#center).
	templateLbl cellSpacing: (#none).
	templateLbl layoutInset: (0).
	templateLbl listCentering: (#topLeft).
	templateLbl listDirection: (#leftToRight).
	templateLbl listSpacing: (#none).
	templateLbl maxCellSize: (1073741823).
	templateLbl minCellSize: (0).
	templateLbl wrapCentering: (#topLeft).
	templateLbl wrapDirection: (#none).
	templateLbl frameFractions: (0@0 corner: 1@1).
	templateLbl frameOffsets: (0@0 corner: 0@0).
	templateLbl balloonText: (nil).
	templateLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	templateLbl text: ('Design Templates:').
	templateLbl setProperty: #formByDesigner toValue: 'nil'.
	templateLbl form: (nil).
	templateLbl setProperty: #objectName toValue: 'templateLbl'.
	unnamedMorph2 addMorphBack: templateLbl.
	templateList := UiListWidget new.
	templateList extent: (192@104).
	templateList position: (270@137).
	templateList hResizing: (#spaceFill).
	templateList vResizing: (#spaceFill).
	templateList cellInset: (0).
	templateList cellPositioning: (#center).
	templateList cellSpacing: (#none).
	templateList layoutInset: (0).
	templateList listCentering: (#topLeft).
	templateList listDirection: (#topToBottom).
	templateList listSpacing: (#none).
	templateList maxCellSize: (1073741823).
	templateList minCellSize: (0).
	templateList wrapCentering: (#topLeft).
	templateList wrapDirection: (#none).
	templateList frameFractions: (0@0 corner: 1@1).
	templateList frameOffsets: (0@0 corner: 0@0).
	templateList balloonText: (nil).
	templateList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	templateList horizontalHeaderVisible: (false).
	templateList verticalHeaderVisible: (false).
	templateList setProperty: #objectName toValue: 'templateList'.
	unnamedMorph2 addMorphBack: templateList.
	newBtn := UiPushButton new.
	newBtn changeTableLayout.
	newBtn extent: (192@21).
	newBtn position: (270@245).
	newBtn hResizing: (#spaceFill).
	newBtn vResizing: (#shrinkWrap).
	newBtn cellInset: (4).
	newBtn cellPositioning: (#center).
	newBtn cellSpacing: (#none).
	newBtn layoutInset: (2@0 corner: 2@0).
	newBtn listCentering: (#topLeft).
	newBtn listDirection: (#leftToRight).
	newBtn listSpacing: (#none).
	newBtn maxCellSize: (1073741823).
	newBtn minCellSize: (0).
	newBtn wrapCentering: (#topLeft).
	newBtn wrapDirection: (#none).
	newBtn frameFractions: (0@0 corner: 1@1).
	newBtn frameOffsets: (0@0 corner: 0@0).
	newBtn balloonText: (nil).
	newBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	newBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons pageWhiteIcon'.
	newBtn icon: (UiSilkIcons pageWhiteIcon).
	newBtn text: ('Create Empty Design').
	newBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	newBtn checkable: (false).
	newBtn checked: (false).
	newBtn autoExclusive: (false).
	newBtn setProperty: #objectName toValue: 'newBtn'.
	unnamedMorph2 addMorphBack: newBtn.
	panel addMorphBack: unnamedMorph2.
	versionLbl := UiLabel new.
	versionLbl changeTableLayout.
	versionLbl extent: (15@19).
	versionLbl position: (474@275).
	versionLbl hResizing: (#shrinkWrap).
	versionLbl vResizing: (#shrinkWrap).
	versionLbl cellInset: (0).
	versionLbl cellPositioning: (#center).
	versionLbl cellSpacing: (#none).
	versionLbl layoutInset: (0).
	versionLbl listCentering: (#topLeft).
	versionLbl listDirection: (#leftToRight).
	versionLbl listSpacing: (#none).
	versionLbl maxCellSize: (1073741823).
	versionLbl minCellSize: (0).
	versionLbl wrapCentering: (#topLeft).
	versionLbl wrapDirection: (#none).
	versionLbl frameFractions: (0@0 corner: 1@1).
	versionLbl frameOffsets: (0@0 corner: 0@0).
	versionLbl balloonText: (nil).
	versionLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	versionLbl text: ('1.1').
	versionLbl setProperty: #formByDesigner toValue: 'nil'.
	versionLbl form: (nil).
	versionLbl setProperty: #objectName toValue: 'versionLbl'.
	panel addMorphBack: versionLbl.
	panel setProperty: #uiClassName toValue: 'UiDesignerMenu'.