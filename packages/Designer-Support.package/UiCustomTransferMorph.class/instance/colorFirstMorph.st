private
colorFirstMorph

	((self passenger first at: #class) isKindOf: (UiContainer class))
		ifTrue: [ self widget 
					borderWidth: 1;
					borderColor: Color gray ]