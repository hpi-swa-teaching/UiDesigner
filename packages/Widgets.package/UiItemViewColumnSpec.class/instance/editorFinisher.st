accessing - converting
editorFinisher
	"A block that should take editor data and write it back to the model."
	
	^ editorFinisher ifNil: [editorFinisher := [:editor :node |
			node perform: (self textSelector, #:) asSymbol withArguments: {editor theText}]].