accessing
traversalMode

	^ traversalMode ifNil: [traversalMode := #depthFirst]