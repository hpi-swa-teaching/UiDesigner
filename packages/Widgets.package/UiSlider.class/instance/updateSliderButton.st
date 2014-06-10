updating
updateSliderButton
	"Reposition the support morph for the slider to #sliderPosition."
	
	| pt |
	self sliderPosition ifNil: [^ self].
	
	sliderButton orientation: self orientation.
	
	self orientation = #horizontal	ifTrue: [
		sliderButton extent: 10@self height.

		pt := ((self valueToPixel: self sliderPosition)
			"Add the offset considering the current position."
			+ self left + (sliderButton width / 2))
			@ self center y.
			
		sliderButton center: pt].
		
	self orientation = #vertical ifTrue: [
		sliderButton extent: self width@10.
		
		pt := self center x @(
			self bottom
			- (self valueToPixel: self sliderPosition)
			- (sliderButton height / 2)).
			
		sliderButton center: pt].