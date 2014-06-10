signals -unboxing
onCurrentIndexChanged: aModelIndex
	"Map to the row index. Ignore the column in a list."
	
	super onCurrentIndexChanged: aModelIndex.
	self currentRowChanged: self currentRow.