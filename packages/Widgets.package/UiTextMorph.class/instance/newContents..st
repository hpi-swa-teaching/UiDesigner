accessing
newContents: stringOrText
	"Replace all line ending characters if #acceptOnCR is true. This makes sense because the user cannot type these characters anyway."

	self acceptOnCR
		ifTrue: [super newContents: stringOrText asString withoutLineEndings]  
		ifFalse: [super newContents: stringOrText].