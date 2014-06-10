accessing - model index
selectedIndices: someModelIndices

	self cells: (someModelIndices collect: [:index |
		self viewport cellIndexFromModelIndex: index]).
