converting - accessing
converter
	"Used for conversion purposes of input data. The default converter is the indentity function."

	^ converter ifNil: [converter := [:raw | raw]]