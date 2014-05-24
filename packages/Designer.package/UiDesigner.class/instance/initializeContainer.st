initialization
initializeContainer

	container
		editMode: true;
		color: Color lightGray ;
		dragEnabled: false.
		
	self connect: container signal: #selectionChanged: to: self attributeTreeModel selector: #setNewWidget:.
	self connect: self attributeTreeModel signal: #modelReset to: self selector: #expandAllAttributeCategories.
	
	self ui centralScroller widget: container.
	
	self attributeTreeModel setNewWidget: container.