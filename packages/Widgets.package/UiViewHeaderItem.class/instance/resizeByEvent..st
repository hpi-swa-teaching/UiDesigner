actions
resizeByEvent: aMouseEvent

	mouseDownPosition ifNil: [^ self].

	self resized: (self orientation == #horizontal
		ifTrue: [(aMouseEvent position - self left) x]
		ifFalse: [(aMouseEvent position - self top) y]).