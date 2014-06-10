accessing
resizeMode: aSymbol
	"#rigid, #shrinkWrap, #spaceFill"

	resizeMode := aSymbol.
	self headerItem ifNotNil: [:hi |
		hi resizeable: resizeMode == #rigid].