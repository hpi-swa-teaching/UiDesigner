mouse - handling
mouseWheel: aMouseEvent fromMorph: aMorph

	(self handlesMouseWheel: aMouseEvent)
		ifTrue: [
			aMouseEvent direction = #up
				ifTrue: [self mouseWheelUp: aMouseEvent].
			aMouseEvent direction = #down
				ifTrue: [self mouseWheelDown: aMouseEvent]].