layouting
updateSingleColumnLayout
	
	self orientation == #vertical ifTrue: [
		^ self updateSingleColumnVerticalLayout].
	self orientation == #horizontal ifTrue: [
		^ self updateSingleColumnHorizontalLayout].
	self orientation == #horizontalSingleRow ifTrue: [
		^ self updateSingleColumnHorizontalSingleRowLayout].