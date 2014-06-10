building
itemFor: aNode

	| item emph text |	
	text := self textFor: aNode.
	emph := text isText
		ifFalse: [0]
		ifTrue: [((text attributesAt: 1) detect: [:att | att emphasisCode ~= 0] ifNone: [])
			ifNil: [0]
			ifNotNil: [:att | att emphasisCode]].
		
	item := UiItemViewMorph new
		form: ((self morphFor: aNode)
			ifNil: [self iconFor: aNode]
			ifNotNil: [:morph | morph imageForm]);
		label: (text ifNotNil: [:t | t asString]);
		font: (UiPlatform current standardListFont emphasized: emph);
		color: (self colorFor: aNode);
		labelColor: self labelColor;
		balloonText: (self balloonTextFor: aNode);	
		setProperty: #selectable toValue: (self selectableFor: aNode);
		setProperty: #text toValue: text;
		yourself.

	self doLayoutFor: item.	
	
	^ item