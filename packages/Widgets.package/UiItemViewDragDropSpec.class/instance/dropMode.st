accessing
dropMode
	"#over, #between"
	
	^ dropMode ifNil: [dropMode := #between]