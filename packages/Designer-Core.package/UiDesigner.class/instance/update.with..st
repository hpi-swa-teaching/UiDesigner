history
update: aComboBox with: aCommand.
	aComboBox addIcon: (aCommand relevantMorph class widgetClassIcon) text: aCommand convertToText.
	aComboBox objectName = 'undoComboBox'
	ifTrue: [	aComboBox converter: [:item | self revertUntil: aComboBox currentItem]]
	ifFalse: [aComboBox converter: [:item | self forwardTo: aComboBox currentItem]]