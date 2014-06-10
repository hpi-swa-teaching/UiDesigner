actions
stopFadeOut

	self stopStepping.

	closeButton ifNil: [closeButton :=
		UiToolButton new
			icon: (UiButtonIcons crossSmallSunkenIcon clippedTo: 10@16);
			buttonStyle: #iconOnly;
			color: (Color gray: 0.85);
			autoRaise: true.
		self connect: closeButton signal: #clicked: toSelector: #fadeOutAndDelete.
		self addMorph: closeButton.
		
		closeButton center: self center - (((self width / 2) + (closeButton width / 2)) @ 0).
		closeButton fadeIn].