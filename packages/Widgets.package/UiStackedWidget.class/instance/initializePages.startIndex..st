initialization
initializePages: somePages startIndex: anInteger

	| oldAnimated |
	oldAnimated := self animated.
	
	self
		clear;
		animated: false.
		
	somePages do: [:p | self addPageSilently: p].
	
	self
		currentIndex: anInteger;
		animated: oldAnimated.  
		