testing
respondsTo: aSelector
	"Map keys to messages/accessors."

	^ (super respondsTo: aSelector) or: [(aSelector endsWith: ':')
		ifTrue: [self includesKey: aSelector allButLast]
		ifFalse: [self includesKey: aSelector]]