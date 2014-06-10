*widgets-support
asGrayScale2

	^ self collectColors: [:c | c isTransparent
		ifTrue: [c]
		ifFalse: [Color gray: c luminance]]