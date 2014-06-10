private
releaseEditor

	editor ifNotNil: [
		selection := self editor selectionInterval].
	
	super releaseEditor.