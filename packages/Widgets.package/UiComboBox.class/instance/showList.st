private
showList

	listWidget size = 0
		ifTrue: [^ self].
	
	listWidget
		useOptimalSize;
		width: (self width max: listWidget width);
		height: (listWidget height min: 100);
		topLeft: (self localPointToGlobal: self bottomLeft);
		openInWorld.