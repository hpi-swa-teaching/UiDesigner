rows/columns - specs
listSpec: aColumnSpec

	columnSpecs := {aColumnSpec}.
	self reset.
	
	self flag: #tricky. "mt: Is this really the correct place to ensure the resize mode? Maybe we should preserve column-specific configurations AFTER a calling #reset... see UiColumnInfo class."
	self listOrientation == #default
		ifTrue: [self setResizeModeForColumn: 1 to: #spaceFill]  
		ifFalse: [self setResizeModeForColumn: 1 to: #shrinkWrap].