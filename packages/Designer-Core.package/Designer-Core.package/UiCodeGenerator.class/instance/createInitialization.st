code generation
createInitialization	
	self surroundingClass compile: (
	'initialize
   	super initialize.
   	self ui setupUi: self.'
	) classified: 'initialization'.	