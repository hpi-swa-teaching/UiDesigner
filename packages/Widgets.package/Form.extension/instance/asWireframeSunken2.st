*widgets-support
asWireframeSunken2

	| bw hi t |
	bw := self collectColors: [:c | (Color gray: 0.8) alpha: c alpha].
	hi := self collectColors: [:c | (Color gray: 0.1) alpha: c alpha].

	t := (Form extent: bw extent depth: bw depth)
		fillColor: Color transparent.
	t
		copy: (0@0 extent: hi extent) from: hi to:  0 @  -1 rule: Form paint;
		copy: (0@0 extent: bw extent) from: bw to:  0 @  0 rule: Form paint.	

	^ t