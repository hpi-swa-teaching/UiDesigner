tests
test02ValueChange

	sut
		minimum: 0;
		maximum: 100.

	#(-50 0 50 100 150) do: [:val |
		sut currentValue: val.
		self assert: (sut currentValue between: sut minimum and: sut maximum)].