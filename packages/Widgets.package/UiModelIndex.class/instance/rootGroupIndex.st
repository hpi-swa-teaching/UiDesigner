accessing
rootGroupIndex

	| c |
	c := self.
	[c parent notNil] whileTrue: [c := c parent].
	^ c groupIndex