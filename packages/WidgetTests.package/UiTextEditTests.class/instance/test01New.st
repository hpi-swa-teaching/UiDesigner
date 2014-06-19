tests
test01New

	self
		deny: sut autoAccept;
		deny: sut autoConvert;
		deny: sut readOnly;
		assert: sut theText = '';
		deny: sut hasUnacceptedChanges;
		deny: sut acceptOnFocusLost.