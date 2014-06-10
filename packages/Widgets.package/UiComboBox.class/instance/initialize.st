initialization
initialize

	super initialize.
	
	self
		initializeSupportMorphs;
		initializeEventHandler.
	
	self
		width: 150;
		layoutPolicy: UiComboBoxLayout new.
	super color: Color white.
		
	"Initialize the submorphs the first time."
	self readOnly: true.
		
	self connect: listWidget signal: #currentRowChanged: toSelector: #updateCurrentRow:.
	self connect: listWidget signal: #currentRowChanged: toSelector: #hideList.
	
	"TODO: use other signals for changing text"
	self connect: lineEdit signal: #returnPressed: toSelector: #currentTextChanged:.