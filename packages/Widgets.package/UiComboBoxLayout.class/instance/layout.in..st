layout
layout: aComboBox in: newBounds

	aComboBox submorphsDo: [:s | s fullBounds].

	aComboBox button topRight: newBounds topRight.
	aComboBox arrowButton topRight: newBounds topRight.
	
	aComboBox lineEdit topLeft: newBounds topLeft.
	aComboBox readOnlyButton topLeft: newBounds topLeft.
	
	aComboBox readOnlyButton width: newBounds width - aComboBox button width - 1.
	aComboBox lineEdit width: newBounds width - aComboBox button width - 1.
	
	"vertical shrink wrap"
	aComboBox height: aComboBox readOnlyButton height.

	aComboBox button height: aComboBox readOnlyButton height.
	aComboBox arrowButton height: aComboBox readOnlyButton height.
	aComboBox lineEdit height: aComboBox readOnlyButton height.