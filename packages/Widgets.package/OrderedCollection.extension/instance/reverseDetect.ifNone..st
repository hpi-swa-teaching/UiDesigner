*widgets-support
reverseDetect: aBlock ifNone: exceptionBlock

	self reverseDo: [:each | (aBlock value: each) ifTrue: [^ each]].
	^ exceptionBlock value	