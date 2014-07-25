history
update: aComboBox with: aCommand

	aComboBox addFirstIcon: (aCommand relevantMorph class widgetClassIcon) 
		text: aCommand convertToText