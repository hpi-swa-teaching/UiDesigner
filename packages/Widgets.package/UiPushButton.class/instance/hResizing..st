layout-properties
hResizing: aSymbol

	(aSymbol ~= #shrinkWrap and: [self clipSubmorphs not])
		ifTrue: [self clipSubmorphs: true].
	
	^ super hResizing: aSymbol