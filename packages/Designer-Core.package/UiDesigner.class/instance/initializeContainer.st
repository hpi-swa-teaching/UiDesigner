initialization
initializeContainer
	container
		editMode: true;
		color: Color lightGray ;
		dragEnabled: false.
		
	self connect: container signal: #selectionChanged: to: self attributeTreeModel selector: #setNewWidget:.
	self connect: container signal: #morphAdded:into: to: self selector: #morphAdded:into:.
	self connect: container signal: #removedMorph:from: to: self selector: #morphRemoved:from:.
	
	self ui centralScroller widget: container.
	
	self attributeTreeModel setNewWidget: container.