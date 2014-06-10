updating
updateSupportMorphs

	self orientation = #horizontal ifTrue: [self listDirection: #topToBottom].  		
	self orientation = #vertical ifTrue: [self listDirection: #leftToRight].

	self
		updatePagingMorph;
		updateSliderButton.