add/remove - private
removeRow: aRowInfo

	aRowInfo items withIndexDo: [:item :index |
		(columns at: index) items remove: item].
	
	self removeAllMorphsIn: aRowInfo items.
	rows remove: aRowInfo.