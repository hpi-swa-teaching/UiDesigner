signals - setup
onPropertiesChanged: someProperties

	(spec includesAnyProperty: someProperties inNode: self node)
		ifTrue: [self itemChanged].