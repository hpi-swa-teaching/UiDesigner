tests
testLayoutSettingsPresence
	| present |
	
	present := false. 
	
	model attributes do: [ :category |
		((category at: #attributeOrigin) = 'Layout settings') ifTrue: [ present := true. ]].

	self assert: present.