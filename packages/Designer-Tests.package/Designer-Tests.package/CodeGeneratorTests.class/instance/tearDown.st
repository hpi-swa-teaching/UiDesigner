initialize-release
tearDown
	
	Smalltalk removeClassNamed: 
		((Smalltalk at: testClassName asSymbol ifAbsent: [^nil]) name).