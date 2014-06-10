geometry
optimalWidth
	"Change the size of the view that only one kind/direction of scrolling is needed."

	self listOrientation == #default ifTrue: [
		^ self viewport optimalSize x + self scrollBarThickness + 5 + 
			(self hasVerticalHeader ifTrue: [verticalHeader width] ifFalse: [0])].
		
	self listOrientation == #vertical ifTrue: [
		^ self viewport optimalSize x + self scrollBarThickness + 5 +
			(self hasVerticalHeader ifTrue: [verticalHeader width] ifFalse: [0])].

	self listOrientation == #horizontal ifTrue: [
		^ self viewport optimalSize x].