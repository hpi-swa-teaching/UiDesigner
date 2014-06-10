building
itemFor: aNode groupIndex: aGroupIndex isTopLevel: aBoolean
	"Create a morph that separates groups in item views."
	
	| item |	
	item := Morph new
		color: Color transparent;
		extent: 6@1;
		yourself.
	item
		setProperty: #hideAlways toValue: true;
		setProperty: #selectable toValue: false.

	^ item