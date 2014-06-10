actions
revertChanges

	self theText: self originalText copy.
	self textReverted: self theText copy.