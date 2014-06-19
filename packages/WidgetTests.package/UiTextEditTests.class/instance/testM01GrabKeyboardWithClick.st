tests - mouse input
testM01GrabKeyboardWithClick

	self
		deny: sut textMorph hasKeyboard;
		mouseClick: #(left);
		assert: sut textMorph hasKeyboard.