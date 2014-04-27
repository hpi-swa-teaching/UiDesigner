code generation
createAccessors

	| template |
	template := '{1}
	"{2}"
	
	^ {1}'.
	self namedInstVars do: [:instVar |
		self uiClass compile: (template format: {
			instVar at: #name.
			instVar at: #description}) classified: 'accessing'].