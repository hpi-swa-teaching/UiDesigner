accessing
orientation: aSymbol
	"#horizontal, #vertical"
	
	aSymbol = orientation ifTrue: [^ self].
	
	orientation := aSymbol.
	
	self update.