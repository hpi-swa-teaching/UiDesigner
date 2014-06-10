accessing
orientation: aSymbol
	"#horizontal, #vertical"

	orientation == aSymbol
		ifTrue: [^ self].
		
	orientation := aSymbol.
	self updateLayout.