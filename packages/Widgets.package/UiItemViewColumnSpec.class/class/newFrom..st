instance creation
newFrom: selectorMap
	"Targets can be symbols OR integers. The latter one needs #properties to be implemented in all nodes. See TUiItemModel trait."

	selectorMap isArray
		"{#text -> #name. #icon -> #stateForm}"
		ifTrue: [^ self newFrom: (Dictionary newFrom: selectorMap)].
		
	^ self new
		"item data"
		textSelector: (selectorMap at: #text ifAbsent: []);
		iconSelector: (selectorMap at: #icon ifAbsent: []);
		colorSelector: (selectorMap at: #color ifAbsent: []);
		balloonTextSelector: (selectorMap at: #balloonText ifAbsent: []);
		menuSelector: (selectorMap at: #menu ifAbsent: []);
		checkedSelector: (selectorMap at: #checked ifAbsent: []);
		morphSelector: (selectorMap at: #morph ifAbsent: []);
		"header data"
		headerText: (selectorMap at: #headerText ifAbsent: []);
		headerIcon: (selectorMap at: #headerIcon ifAbsent: []);
		"flags"
		selectableSelector: (selectorMap at: #selectable ifAbsent: []);
		checkableSelector: (selectorMap at: #checkable ifAbsent: []);
		editableSelector: (selectorMap at: #editable ifAbsent: [])
		
