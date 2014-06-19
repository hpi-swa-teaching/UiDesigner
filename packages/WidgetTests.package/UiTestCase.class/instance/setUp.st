running
setUp

	super setUp.

	self subjectClass ifNotNil: [:cls | sut := cls new].
	spy := SignalSpy new.
	hand := UiTestHandMorph new owner: sut.
	time := 0.