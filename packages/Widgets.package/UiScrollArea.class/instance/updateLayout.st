layouting
updateLayout

	"viewport bounds can only be calculated right if transform morph has correct size..."
	self transformMorph disconnectSignal: #areaChanged from: self selector: #updateLayout.
	self transformMorph bounds: self viewportBounds.
	self connect: self transformMorph signal: #areaChanged toSelector: #updateLayout.

	self isVerticalScrollBarVisible
		ifFalse: [self removeMorph: self verticalScrollBar]
		ifTrue: [self addMorph: self verticalScrollBar].  
	
	self verticalScrollBar
		extent: self scrollBarThickness @ self transformMorph height;
		topLeft: self transformMorph right @ self top.

	self isHorizontalScrollBarVisible
		ifFalse: [self removeMorph: self horizontalScrollBar]
		ifTrue: [self addMorph: self horizontalScrollBar].  
		
	self horizontalScrollBar
		extent: self transformMorph width @ self scrollBarThickness;
		topLeft: self left @ self transformMorph bottom.

	self isHorizontalScrollBarVisible & self isVerticalScrollBarVisible
		ifFalse: [self removeMorph: self cornerWidget]
		ifTrue: [self addMorph: self cornerWidget].  
		
	self cornerWidget
		extent: self scrollBarThickness @ self scrollBarThickness;
		topLeft: self transformMorph bottomRight.
		
	self widget ifNil: [^ self].
	
	"Intelligent layout mechanisms."
	self widgetResizable ifTrue: [
		self horizontalScrollBarPolicy = #alwaysOff
			ifTrue: [self widget width: self transformMorph width / self transformMorph scale]
			ifFalse: [self verticalScrollBarPolicy = #alwaysOff
				ifTrue: [self widget height: self transformMorph height / self transformMorph scale]]].
	
	self areaResizable ifTrue: [
		self verticalScrollBarPolicy = #alwaysOff
		ifTrue: [
			self transformMorph verticalOffset: 0.
			self height: self widget height * self transformMorph scale + (self isHorizontalScrollBarVisible
				ifTrue: [self scrollBarThickness + 1] ifFalse: [0])]
		ifFalse: [self horizontalScrollBarPolicy = #alwaysOff
			ifTrue: [
				self transformMorph horizontalOffset: 0.
				self width: self widget width * self transformMorph scale + (self isVerticalScrollBarVisible
					ifTrue: [self scrollBarThickness + 1] ifFalse: [0])]]].