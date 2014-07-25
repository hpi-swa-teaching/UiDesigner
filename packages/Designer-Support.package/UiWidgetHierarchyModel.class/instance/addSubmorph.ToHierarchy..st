updating
addSubmorph: aMorph ToHierarchy: parentNode
	
	| morphNode morphClass |
	morphClass := aMorph class asString.
	morphNode := self createNodeFrom: aMorph.						
	parentNode addChild: morphNode.
	
	(aMorph = self selectedWidget) ifTrue: [ self selectedNode: morphNode ].
	
	" only widget containers are allowed to have children! "
	((morphClass = 'UiContainer') or: (morphClass = 'UiStackedWidget'))
	ifTrue: [ aMorph submorphs do: [ :submorph |
		self addSubmorph: submorph ToHierarchy: morphNode ] ]