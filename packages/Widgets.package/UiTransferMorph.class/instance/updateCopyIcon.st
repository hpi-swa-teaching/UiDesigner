private
updateCopyIcon

	| copyIcon |
	copyIcon := self submorphWithProperty: #tmCopyIcon.
	(self shouldCopy and: [ copyIcon isNil ]) ifTrue: [
		^ self addMorphFront: ((self labelMorphFor: 'Evaluate')
			setProperty: #tmCopyIcon toValue: true)
	].
	(self shouldCopy not and: [ copyIcon notNil ]) ifTrue: [
		copyIcon delete
	]