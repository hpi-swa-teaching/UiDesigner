private
colorFirstMorph
	((self passenger first at: #class) isKindOf: (UiContainer class))
		ifTrue: [ widget borderWidth: 1;
					borderColor: Color gray ]. 