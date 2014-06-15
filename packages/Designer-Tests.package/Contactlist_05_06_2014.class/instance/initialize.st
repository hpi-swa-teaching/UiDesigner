initialization
initialize
   	super initialize.
   	self ui setupUi: self.
	self setTable.
	self connect: self ui saveButton signal: #clicked: to: self selector: #saveContact.
	self connect: self ui clearButton signal: #clicked: to: self selector: #clearContacs.
