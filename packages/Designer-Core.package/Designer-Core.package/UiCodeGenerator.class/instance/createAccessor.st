code generation
createAccessor
	self surroundingClass compile: (
	'ui
	^ ui ifNil: [ ui := ', self uiClassName, ' new]'
	) classified: 'accessing'.