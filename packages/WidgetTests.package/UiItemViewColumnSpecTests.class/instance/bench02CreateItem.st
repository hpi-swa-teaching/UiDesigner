as yet unclassified
bench02CreateItem
	"self new bench02CreateItem."
	
	| item object |
	self setUp.
	sut
		itemOrientation: #horizontal;
		textSelector: #asString;
		iconSelector: #imageForm.
		
	object := self exampleObject.
	
	^ [sut itemFor: object] bench