accessing
autoRaise: aBoolean

	aBoolean == autoRaise ifTrue: [^ self].

	autoRaise := aBoolean.
	
	self raised: aBoolean not.