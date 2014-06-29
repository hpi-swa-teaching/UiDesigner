layouting
updateLayout

	super updateLayout.

	self widget ifNotNilDo: [:propertyTable |
		propertyTable width: self transformMorph width].