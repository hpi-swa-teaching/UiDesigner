accessing
selectBlock: aBlock
	"[:node | node text size > 5]"
	
	selectBlock := aBlock.
	self
		selectNone; flag: #workaround; "mt: better update selection correctly than discarding it"
		updateLayout.