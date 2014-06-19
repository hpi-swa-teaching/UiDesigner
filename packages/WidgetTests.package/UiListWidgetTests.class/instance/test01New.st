tests
test01New

	self
		assert: sut isEmpty;
		assert: sut currentIcon isNil;
		assert: sut currentItem isNil;
		assert: sut currentText isNil.