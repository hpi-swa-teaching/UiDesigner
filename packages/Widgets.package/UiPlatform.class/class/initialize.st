class initialization
initialize
	"self current."
	
	self == UiPlatform ifTrue: [^ self].
	Current ifNil: [Current := self new].