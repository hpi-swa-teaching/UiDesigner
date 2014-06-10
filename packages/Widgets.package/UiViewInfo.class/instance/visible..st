accessing
visible: aBoolean
 
	self visible == aBoolean ifTrue: [^ self].
	
	visible := aBoolean.
	
	"Set flag in morphs to better support morphic event processing."
	self items do: [:morph | morph visible: visible].