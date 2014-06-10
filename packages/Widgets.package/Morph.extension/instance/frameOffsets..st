*widgets
frameOffsets: aRectangle

	| frame |
	frame := self layoutFrame ifNil: [LayoutFrame new].
	frame
		topOffset: aRectangle top;
		bottomOffset: aRectangle bottom;
		leftOffset: aRectangle left;
		rightOffset: aRectangle right.
	self layoutFrame: frame.
	self layoutChanged.