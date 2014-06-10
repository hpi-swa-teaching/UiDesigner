initialization
initializeDecreaseValueButton2

	decreaseValueButton2 ifNil: [
		decreaseValueButton2 := UiScrollBarArrowButton new.
		self connect: decreaseValueButton2 signal: #pressed toSelector: #decreaseValueBySingleStep.
		self addMorph: decreaseValueButton2 after: pagingMorph.
		decreaseValueButton2]