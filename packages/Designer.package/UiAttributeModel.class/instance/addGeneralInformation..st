updating
addGeneralInformation: aMorph
	| generalInfoNode |
	
	generalInfoNode := self createParentNodeFrom: 'General'.
	
	generalInfoNode addChild: (UiPropertyItemNode new
								at: #propertyName put: 'Type';
								at: #propertyValue put: aMorph class;
								at: #isEditable put: false;
								yourself).
	
	((aMorph isKindOf: UiContainer) and: [(aMorph owner isKindOf: UiContainer) not])
		ifTrue: [" in case of the top level container "
			generalInfoNode addChild: (self createTextNodeWithName: 'uiClassName' andValue: (aMorph uiClassName))]
		ifFalse: [
			" in case of any other widget in the hierarchy below "
			generalInfoNode addChild: (self createTextNodeWithName: 'objectName' andValue: (aMorph name))].