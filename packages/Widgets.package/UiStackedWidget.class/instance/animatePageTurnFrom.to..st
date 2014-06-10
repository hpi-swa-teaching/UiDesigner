updating
animatePageTurnFrom: oldIndex to: newIndex
	"Turn the page and animate."
	
	| buffer canvas start end anim transition |
	buffer := Form
		extent: self width * ((newIndex - oldIndex) abs + 1) @ self height
		depth: 32.
	canvas := buffer getCanvas.
	start := {oldIndex.newIndex} min.
	end := {oldIndex.newIndex} max.
		
	start to: end do: [:i |
		canvas
			translateBy: self topLeft negated + ((self width * (i - start)) @ 0)
			during: [:c | (self pages at: i)
				bounds: self bounds;
				fullDrawOn: c]].
	
	transition := buffer asMorph.
	transition disableTableLayout: true.
	newIndex > oldIndex
		ifTrue: [transition topLeft: self topLeft]
		ifFalse: [transition topRight: self topRight].
	self addMorphFront: transition.
		
	anim := (AnimPropertyAnimation
		on: transition
		property: (newIndex > oldIndex ifTrue: [#right] ifFalse: [#left])
		start: (newIndex > oldIndex ifTrue: [transition right] ifFalse: [transition left])
		end: (newIndex > oldIndex ifTrue: [self right] ifFalse: [self left])
		duration: self animationDuration).
	anim easingCurve conversionBlock: [:x | (-1 * (x-1 raisedTo: 6)) + 1].
	
	anim
		register;
		finishBlock: [transition delete];
		start: #deleteWhenFinished.