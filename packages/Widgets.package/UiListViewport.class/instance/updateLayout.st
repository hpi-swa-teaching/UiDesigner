layouting
updateLayout

	"There is no list wrapping in #default layout. Just use the super implementation."
	self orientation = #default
		ifTrue: [^ super updateLayout].	
	
	[
	
	self columnCountVisible == 0 ifTrue: [^ self].
	isLayoutBeingModified := true.
	
	self
		updateRowsVisibility;
		updateItemOrder;
		updateMaxItemExtent;
		updateSingleColumnLayout.
		
	] ensure: [
		isLayoutBeingModified := false.
		self drawCacheActive
			ifTrue: [self updateDrawCache]].