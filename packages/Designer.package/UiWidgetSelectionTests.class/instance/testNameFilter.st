as yet unclassified
testNameFilter
	| test |
	widget nameFilter: 'Morph'.
	test := (widget ui widgetList model nameFilter = 'Morph').
	self assert: test.