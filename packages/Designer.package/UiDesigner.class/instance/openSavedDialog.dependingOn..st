save/load
openSavedDialog: aGenerator dependingOn: checkboxChecked

	| informText |
	
	informText := 'UI class was created successfully to:', String cr, '[', aGenerator category, '] ', aGenerator uiClassName.
	
	checkboxChecked
	ifTrue: [informText := informText, String cr, 'Surrounding class was created successfully to:', String cr, '[', aGenerator category, '] ', aGenerator surroundingClassName].

	UserDialogBoxMorph
		inform: informText
		title: 'Done.'
		at: self center.	
			
