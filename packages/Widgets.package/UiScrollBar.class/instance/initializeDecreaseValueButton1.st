initialization
initializeDecreaseValueButton1

	decreaseValueButton1 ifNil: [
		decreaseValueButton1 := UiScrollBarArrowButton new.
		self connect: decreaseValueButton1 signal: #pressed toSelector: #decreaseValueBySingleStep.
		self addMorphFront: decreaseValueButton1.
		decreaseValueButton1]