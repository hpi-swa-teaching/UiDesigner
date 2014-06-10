private
paragraph

	paragraph ifNil: [
		"Paragraph will be lazy-instatiated."
		self initializeParagraph: super paragraph].
	^ super paragraph