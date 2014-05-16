updating
addGeneralInformation: aMorph
	| generalInfoNode |
	
	generalInfoNode := self createParentNodeFrom: 'Owner specific layout'.
	
	generalInfoNode addChild: (UiPropertyItemNode new
								at: #propertyName put: 'Type';
								at: #propertyValue put: aMorph class;
								at: #isEditable put: false;
								yourself).
	
	((aMorph isKindOf: UiContainer) and: [(aMorph owner isKindOf: UiContainer) not])
		ifTrue: [" in case of the top level container "
			generalInfoNode addChild: (self createTextNodeWithName: 'UI Name' andValue: 'Unkown')]
		ifFalse: [
			" in case of any other widget in the hierarchy below "
			generalInfoNode addChild: (self createTextNodeWithName: 'Name' andValue: '')].