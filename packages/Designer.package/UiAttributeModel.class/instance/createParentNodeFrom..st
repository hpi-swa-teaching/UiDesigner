data insertion
createParentNodeFrom: origin
	^ self attributes add: (UiPropertyItemNode new
						addDefaultGroup;
						at: #attributeOrigin put: origin;
						yourself)