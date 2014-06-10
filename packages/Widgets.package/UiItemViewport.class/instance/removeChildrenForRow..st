add/remove
removeChildrenForRow: aRowInfo
	"Used for tree viewports."
	
	(self selectChildrenForRow: aRowInfo)
		do: [:row | self removeRow: row].