accessing
converter

	^ converter ifNil: [converter := [:item | item]]