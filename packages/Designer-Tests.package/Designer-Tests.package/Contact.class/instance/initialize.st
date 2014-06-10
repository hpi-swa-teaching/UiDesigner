as yet unclassified
initialize
	super initialize.
	self ui setupUi: self.
	
	self connect: self ui saveButton signal: #clicked: toSelector: #saveContact.
	self connect: self ui removeButton signal: #clicked: toSelector: #removeContact.