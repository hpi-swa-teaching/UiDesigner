scrolling
scrollToShow: aRectangle duration: milliseconds thenDo: aBlock
	"Animated scrolling."
	
	| anim newOffset |
	newOffset := self offsetToShow: aRectangle.
	
	newOffset = self transformMorph offset
		ifTrue: [^ self].
	
	"Consider caching before starting the animation."
	self flag: #refactor.
	self transformMorph drawCacheActive
		ifTrue: [self transformMorph updateDrawCache].
	
	(self valueOfProperty: #scrollAnimation ifAbsent: [])
		ifNotNil: [:an | an unregister].
	
	anim := (AnimPropertyAnimation
		on: self transformMorph
		property: #offset
		start: self transformMorph offset
		end: newOffset  
		duration: milliseconds).
	anim easingCurve conversionBlock: [:x | (-1 * (x-1 raisedTo: 6)) + 1].
	anim
		register;
		finishBlock: aBlock;
		start: #deleteWhenFinished.
		
	self setProperty: #scrollAnimation toValue: anim.