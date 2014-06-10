model - accessing
model: aModel

	self disconnectRoot.
	
	model := aModel.

	self
		reset;
		connectRoot.