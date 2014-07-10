accessing
actionHistory

	^ actionHistory ifNil: [actionHistory := OrderedCollection new.]