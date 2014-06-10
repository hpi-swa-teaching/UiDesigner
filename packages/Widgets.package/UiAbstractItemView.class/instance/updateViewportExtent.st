layouting
updateViewportExtent
	"Make the viewport at least fill the transform morph. This is better for drag/drop operations."

	self widgetResizable ifTrue: [
		self horizontalScrollBarPolicy = #alwaysOff
			ifTrue: [self viewport height: (self transformMorph height / self transformMorph scale
				max: (self viewport rowCountVisible == 0
					ifTrue: [0]
					ifFalse: [self viewport submorphBounds height]))]
			ifFalse: [self verticalScrollBarPolicy = #alwaysOff
				ifTrue: [self viewport width: (self transformMorph width / self transformMorph scale
					max: (self viewport rowCountVisible == 0
						ifTrue: [0]
						ifFalse: [self viewport submorphBounds width]))]]].