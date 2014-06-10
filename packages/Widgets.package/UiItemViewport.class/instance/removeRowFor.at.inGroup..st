add/remove
removeRowFor: aParentModelIndex at: rowIndex inGroup: groupName

	self removeRow: (rows detect: [:row |
		((row isSeparator not
			and: [row parentModelIndex = aParentModelIndex])
			and: [row firstModelIndex group = groupName])
			and: [row firstModelIndex row = rowIndex]])