scrolling - private
offsetToShow: aRectangle
	"Calculate the offset necessary to show the rectangle."
	
	| offset |
	offset := self transformMorph offset.

	"Vertical Scrolling"
	(aRectangle top - offset y) < 0
		ifTrue: [offset := offset x @ (
			(aRectangle top min: self widget height - self transformMorph height))].
		
	((aRectangle bottom - offset y) > self transformMorph height and: [aRectangle height <= self transformMorph height])
		ifTrue: [offset := offset x @ (
					(aRectangle top - self transformMorph height + aRectangle height min: self widget height - self transformMorph height))].
	
	"Horizontal Scrolling"
	(aRectangle left - offset x) < 0
		ifTrue: [offset := (
			(aRectangle left min: self widget width - self transformMorph width)) @ offset y].
		
	((aRectangle right - offset x) > self transformMorph width and: [aRectangle width <= self transformMorph width])
		ifTrue: [offset := (
			(aRectangle left - self transformMorph width + aRectangle width min: self widget width - self transformMorph width)) @ offset y].

	self isHorizontalScrollBarVisible ifFalse: [offset := 0 @ offset y].
	self isVerticalScrollBarVisible ifFalse: [offset := offset x @ 0].

	^ offset