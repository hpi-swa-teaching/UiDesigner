guarding
guardedValue: aNumber

	^ (self truncate
		ifTrue: [aNumber ceiling asInteger]
		ifFalse: [aNumber])
		min: self maximum
		max: self minimum