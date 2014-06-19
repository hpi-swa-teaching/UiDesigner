as yet unclassified
bench01DoLayoutItem
	"self new bench01DoLayoutItem."
	
	| item |
	self setUp.
	sut itemOrientation: #horizontal.
	
	item := self exampleItem.
	
	^ [sut doLayoutFor: item] bench