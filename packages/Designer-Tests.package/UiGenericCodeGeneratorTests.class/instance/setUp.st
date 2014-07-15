initialize-release
setUp 
	super setUp.
	testClassName := 'TestClass'.
	testSuperClass := Morph.
	testInstanceVariable := 'testInstVar'.
	testPackage := 'testPackage'.
	testCategory := 'testCategory'.
	testMethodName := 'testMehod'.
	sut := UiGenericCodeGenerator new.