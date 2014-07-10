history
update: aComboBox with: aCommand.
	aComboBox addIcon: (aCommand relevantMorph class widgetClassIcon) text: aCommand convertToText.