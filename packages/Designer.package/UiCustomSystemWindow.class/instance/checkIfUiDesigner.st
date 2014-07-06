open/close
checkIfUiDesigner

	uiDesigner = nil
		ifFalse: [
			uiDesigner changesMade 
				ifTrue: [	uiDesigner openQuitDialog.]
				ifFalse:[ uiDesigner deleteOwnWindows.
						self delete. ]]
		ifTrue: [self delete.].
	