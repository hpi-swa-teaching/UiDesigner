updating
updateSliderButton
	"Reposition the support morph for the slider to #sliderPosition."
	
	| pt |
	self sliderPosition ifNil: [^ self].
	
	sliderButton orientation: self orientation.
	
	self orientation = #horizontal	ifTrue: [
		sliderButton
			width: self preferredSliderSize;
			height: self height.

		pt := ((self valueToPixel: self sliderPosition)
			"Add the offset considering the current position."
			+ pagingMorph left)
			@ self top.
			
		sliderButton topLeft: pt].
		
	self orientation = #vertical ifTrue: [
		sliderButton
			width: self width;
			height: self preferredSliderSize.
		
		pt := self left @(
			(self valueToPixel: self sliderPosition)
			+ pagingMorph top).
			
		sliderButton topLeft: pt].