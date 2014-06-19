private
systemWindow

	| o |
	o := self owner.
	[o notNil and: [o isSystemWindow not]] whileTrue: [
		o := o owner].
	^ o