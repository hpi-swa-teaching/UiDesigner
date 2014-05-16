as yet unclassified
createSurroundingClass: aClassName in: aCategoryName
	
	self 
		className: aClassName;
		createClassIn: aCategoryName; 
		createAccessor;
		createInitialization;
		createOpening.
		