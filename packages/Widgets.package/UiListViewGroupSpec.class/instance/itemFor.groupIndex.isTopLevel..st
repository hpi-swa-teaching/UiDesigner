building
itemFor: aNode groupIndex: aGroupIndex isTopLevel: aBoolean
	"Create a morph that separates groups in item views."
	
	^ (super
		itemFor: aNode
		groupIndex: aGroupIndex
		isTopLevel: aBoolean)
			setProperty: #selectable toValue: false;
			yourself