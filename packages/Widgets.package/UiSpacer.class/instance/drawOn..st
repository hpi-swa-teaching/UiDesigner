drawing
drawOn: aCanvas

	self editMode ifFalse: [^ self].
	
	self orientation = #horizontal ifTrue: [
		aCanvas
			line: self topLeft to: self bottomLeft color: self color;
			line: self topRight to: self bottomRight color: self color;
			line: self topLeft + (0@(self height // 2)) to: self topRight + (0@(self height // 2)) color: self color].
		
	self orientation = #vertical ifTrue: [
		aCanvas
			line: self topLeft to: self topRight color: self color;
			line: self bottomLeft to: self bottomRight color: self color;
			line: self topLeft + ((self width // 2) @ 0) to: self bottomLeft + ((self width // 2) @ 0) color: self color].