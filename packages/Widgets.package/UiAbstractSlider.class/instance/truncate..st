accessing
truncate: aBoolean

	aBoolean = truncate ifTrue: [^ self].

	truncate := aBoolean.
	
	self truncate ifTrue: [
		self
			range: self range;
			currentValue: self currentValue].