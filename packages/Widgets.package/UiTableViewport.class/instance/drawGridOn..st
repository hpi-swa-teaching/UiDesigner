drawing
drawGridOn: aCanvas

	| offset |
	self showGrid ifFalse: [^ self].
	
	offset := self left - 1.
	self columnsDo: [:colInfo | 
		offset := offset  + colInfo width.
		aCanvas
			line: offset @ self top
			to: offset @ self bottom
			color: (Color gray: 0.9)].
		
	offset := self top - 1.
	self rowsDo: [:rowInfo | 
		offset := offset  + rowInfo height.
		aCanvas
			line: self left @ offset
			to: self right @ offset
			color: (Color gray: 0.9)].