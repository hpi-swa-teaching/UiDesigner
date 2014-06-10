accessing
icon: aForm

	aForm == icon ifTrue: [^ self].

	super icon: aForm.
	self updateSubmorphs.