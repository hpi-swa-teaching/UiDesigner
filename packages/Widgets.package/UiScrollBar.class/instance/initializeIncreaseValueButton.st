initialization
initializeIncreaseValueButton

	increaseValueButton ifNil: [
		increaseValueButton := UiScrollBarArrowButton new.
		self connect: increaseValueButton signal: #pressed toSelector: #increaseValueBySingleStep.
		self addMorphBack: increaseValueButton.
		increaseValueButton]