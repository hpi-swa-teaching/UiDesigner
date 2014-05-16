as yet unclassified
createOpening
	self surroundingClass compile: (
	'open
  	self openInSystemWindowNamed: ''',className,''''
	) classified: 'initialization'.