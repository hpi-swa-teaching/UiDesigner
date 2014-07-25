updating
addGeneralInformation: aMorph

	| generalInfoNode |
	generalInfoNode := self createParentNodeFrom: 'General'.
	generalInfoNode addChild: (UiPropertyItemNode new
									at: #propertyName put: 'Type';
									at: #propertyValue put: aMorph class;
									at: #isEditable put: false;
									yourself).
		
	(self isMorphTopLevelContainer: aMorph)
		ifTrue: [generalInfoNode addChild: (self createTextNodeWithName: 
											'uiClassName' andValue: (aMorph uiClassName))]
		ifFalse: [generalInfoNode addChild: (self createTextNodeWithName: 
											'objectName' andValue: (aMorph objectName))]