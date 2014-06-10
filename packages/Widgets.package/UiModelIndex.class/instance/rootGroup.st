accessing
rootGroup

	| c |
	c := self.
	[c parent notNil] whileTrue: [c := c parent].
	^ c group