layouting
updateLayout

	[
	
	columns ifEmpty: [^ self].
	isLayoutBeingModified := true.
	
	self
		updateRowsVisibility;
		updateSizesOfRowsAndColumns;
		updateItemOrder;
		updateItemLayout;
		updateFirstColumnIndent;
		updateHeaderLayout.
	
	] ensure: [
		isLayoutBeingModified := false.
		self drawCacheActive
			ifTrue: [self updateDrawCache]].