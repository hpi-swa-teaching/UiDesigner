save/load
loadTemplate: aDesignClassOrSymbol

	| ui class |
	class := aDesignClassOrSymbol isSymbol
		ifTrue: [Smalltalk at: aDesignClassOrSymbol]
		ifFalse: [aDesignClassOrSymbol].
			
	ui := class new.
	ui initializePanel.
	ui panel
		removeProperty: #uiClassName;
		removeProperty: #objectName.
	
	container:= ui panel.
	self initializeContainer.