open/close
checkIfUiDesigner

	uiDesigner ifNotNil: [
			uiDesigner changesMade 
				ifTrue: [	uiDesigner openQuitDialog.]
				ifFalse:[ uiDesigner deleteOwnWindows.
						self delete ]]
		ifNil: [ self delete ].
	