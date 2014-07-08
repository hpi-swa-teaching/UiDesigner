initialization
initializeButtons		
	self connect: self ui newBtn signal: #clicked: toSelector: #reset.
	self connect: self ui saveBtn signal: #clicked: toSelector: #openSaveDialogByButton.
	self connect: self ui openBtn signal: #clicked: toSelector: #load.
	
	self connect: self ui hierarchyWindowButton signal: #toggled: toSelector: #toggleHierarchyWindow:.
	self connect: self ui widgetsWindowButton signal: #toggled: toSelector: #toggleWidgetsWindow:.
	self connect: self ui attributesWindowButton signal: #toggled: toSelector: #toggleAttributesWindow:.
	
	self connect: self ui redoButton signal: #clicked: toSelector: #redoAction.
	self connect: self ui undoButton signal: #clicked: toSelector: #undoAction.
	"self ui redoComboBox converter: [:item | self forwardTo: (self ui redoComboBox) currentItem].
	self ui undoComboBox converter: [:item | self revertUntil: (self ui undoComboBox) currentItem]."