save/load
load: aDesignClassOrSymbol

	| ui class |
	class := aDesignClassOrSymbol isSymbol
		ifTrue: [Smalltalk at: aDesignClassOrSymbol]
		ifFalse: [aDesignClassOrSymbol].
	self addRecentDesign: class name asSymbol.
	ui := class new.
	ui initializePanel.
	container:= ui panel.
	self initializeContainer.
	self ui packageNameEdit theText: class category.