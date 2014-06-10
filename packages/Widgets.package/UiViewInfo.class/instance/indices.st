accessing
indices

	^ (items collect: [:item | item valueOfProperty: #modelIndex])
		reject: [:index | index isNil]