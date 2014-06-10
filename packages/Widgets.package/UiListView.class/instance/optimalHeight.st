geometry
optimalHeight

	self listOrientation == #default  ifTrue: [
		^ self viewport optimalSize y].
		
	self listOrientation == #vertical ifTrue: [
		^ self viewport optimalSize y].

	self listOrientation == #horizontal ifTrue: [
		^ self viewport optimalSize y + self scrollBarThickness +
			(self hasHorizontalHeader ifTrue: [horizontalHeader width] ifFalse: [0])].