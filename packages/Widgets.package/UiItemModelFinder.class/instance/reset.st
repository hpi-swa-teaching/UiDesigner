iterator api
reset

	iteratorState := nil.
	iteratorPosition := nil.
	iteratorShadow := nil.
	process ifNotNil: [
		process terminate.
		process := nil].