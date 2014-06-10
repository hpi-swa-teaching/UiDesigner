events
activateCurrentCell

	self selection currentIndex ifNil: [^ self].

	self selection currentCell ifNotNil: [
		self
			activated: self selection currentIndex;
			returnPressed: self selection currentIndex].