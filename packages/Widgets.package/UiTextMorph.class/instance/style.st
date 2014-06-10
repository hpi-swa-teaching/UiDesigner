styling
style

	self styler ifNil: [^ self].
	
	selection := self editor selectionInterval.
	
	self newContents: (self styler format: self contents).
	
	self contents size < 4096
		ifTrue: [self styler style: self contents]
		ifFalse: [self styler styleInBackgroundProcess: self contents].