code generation
createOpening
	self surroundingClass compile: (
	'open
  	self openInSystemWindowNamed: ''', self surroundingClassName ,''''
	) classified: 'initialization'.