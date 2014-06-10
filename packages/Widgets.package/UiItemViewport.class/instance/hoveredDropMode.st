accessing
hoveredDropMode
	"#inFrontOf, #after, #over, #none"
	
	^ hoveredDropMode ifNil: [#none]