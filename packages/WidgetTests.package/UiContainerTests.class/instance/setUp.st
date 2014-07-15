initialize-release
setUp
	super setUp.
	
	sut := UiContainer new.
	container2 := UiContainer new.
	
	sut addMorphBack: container2.