drag/drop
dragEnabled

	^ self dragDropSpec
		ifNil: [false]
		ifNotNil: [:spec | spec dragEnabled]