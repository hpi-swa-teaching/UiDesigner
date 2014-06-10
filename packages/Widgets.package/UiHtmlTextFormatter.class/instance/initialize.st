initialization
initialize

	super initialize.
	offset := 0. "To ignore characters in the input string that are used by tags."
	runStack := Stack new.
	runArray := RunArray new.
	
	"{text attributes. start index. end index. number of open tags}"
	runStack push: {OrderedCollection new. 1. nil. 0}.