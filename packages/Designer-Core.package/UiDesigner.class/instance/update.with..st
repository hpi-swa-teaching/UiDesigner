history
update: aComboBox with: aCommand.
	aComboBox addFirstIcon: (aCommand relevantMorph class widgetClassIcon) text: aCommand convertToText.
	"aComboBox objectName = 'redoComboBox'
	ifTrue:  [self ui redoComboBox converter: [:item | self forwardTo: (self ui redoComboBox) currentItem]. ]
	ifFalse:  [self ui undoComboBox converter: [:item | self revertUntil: (self ui undoComboBox) currentItem].]"