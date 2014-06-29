code generation
createOpening
	self surroundingClass compile: (
	'open
  	self openInWindowLabeled: ''', self surroundingClassName ,''''
	) classified: 'initialization'.