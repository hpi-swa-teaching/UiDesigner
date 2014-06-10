events
hasSubmorphKeyboard
	"Improve lookup speed because there could be many submorphs to check."
	
	self flag: #optimize. "mt: Only if rowCount > 50?"
	^ false