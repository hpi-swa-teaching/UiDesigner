updating
updateLayout

	| c |
	c := Color gray: 0.85.
	
	self orientation == #horizontal ifTrue: [
		self
			listDirection: #leftToRight;
			hResizing: #rigid;
			vResizing: #shrinkWrap;
			fillStyle: ((GradientFillStyle ramp: {
				0.0 -> Color white.
				0.1-> (c adjustBrightness: 0.05).
				0.6 -> (c darker)})
				origin: self topLeft;
				direction: 0 @ self height);
			borderStyle: (BorderStyle raised width: 1).].
	
	self orientation == #vertical ifTrue: [
		self
			listDirection: #topToBottom;
			hResizing: #shrinkWrap;
			vResizing: #rigid;
			color: c;
			"fillStyle: ((GradientFillStyle ramp: {
				0.0 -> Color white.
				0.1-> (c adjustBrightness: 0.05).
				0.6 -> (c darker)})
				origin: self topLeft;
				direction: self width @ 0);"
			borderStyle: (BorderStyle raised width: 1)].