layout-properties
hResizing: aSymbol

	aSymbol = self hResizing ifTrue: [^ self].
	super hResizing: aSymbol.
	
	aSymbol = #shrinkWrap
		ifTrue: [
			text
				hResizing: #rigid;
				wrapFlag: false]
		ifFalse: [
			text
				hResizing: #spaceFill;
				wrapFlag: true].	