events-processing
handleKeystroke: anEvent 
	"Overridden to avoid tab handling."
	
	anEvent wasHandled
		ifTrue: [^ self].
	(self handlesKeyboard: anEvent)
		ifFalse: [^ self].
	anEvent wasHandled: true.
	^ self keyStroke: anEvent