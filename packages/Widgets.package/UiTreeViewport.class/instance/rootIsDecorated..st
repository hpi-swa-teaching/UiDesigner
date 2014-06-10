accessing
rootIsDecorated: aBoolean

	aBoolean = rootIsDecorated ifTrue: [^ self].
	
	rootIsDecorated := aBoolean.
	
	self columns ifEmpty: [
		self updateLayout.
		^ self].
	
	rootIsDecorated
		ifTrue: [
			"Add root indent to all items in first column."
			self columns first items do: [:morph |
				(morph hasProperty: #isGroupSeparator) ifFalse: [
					morph
						setProperty: #indent
						toValue: (morph valueOfProperty: #indent) + self indent]]]
		ifFalse: [
			"Remove root indent to all items in first column."
			self columns first items do: [:morph |
				(morph hasProperty: #isGroupSeparator) ifFalse: [
					morph
						setProperty: #indent
						toValue: (morph valueOfProperty: #indent) - self indent]]].

	self updateLayout.
