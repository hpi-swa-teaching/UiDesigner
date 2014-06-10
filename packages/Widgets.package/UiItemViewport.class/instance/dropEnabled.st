drag/drop
dropEnabled

	^ self dragDropSpec
		ifNil: [false]
		ifNotNil: [:spec | spec dropEnabled]