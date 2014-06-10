accessing
acceptOnFocusLost
	"Should the contents be accepted if the keyboard focus gets lost?"
	
	^ acceptOnFocusLost ifNil: [acceptOnFocusLost := false]