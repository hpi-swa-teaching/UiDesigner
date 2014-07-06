private - inst vars
instVars
	
	^ instVars ifNil: [ instVars := self collectInstVars.]