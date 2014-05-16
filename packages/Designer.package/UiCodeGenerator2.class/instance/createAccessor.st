as yet unclassified
createAccessor
	self surroundingClass compile: (
	'ui
	^ ui ifNil: [ ui := ',className,'Ui new ]'
	) classified: 'accessing'.