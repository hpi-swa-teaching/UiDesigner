code generation
generateAccessors
	
	| template |
	template := '{1}
	
	^ {1}'.
	self instVarsAsCollection do: [:instVar |
		self generatedClass compile: (template format: {
			instVar}) classified: 'accessing'].