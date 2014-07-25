initialization
initializeContainer

	container
		editMode: true;
		color: Color lightGray ;
		dragEnabled: false.
	self connect: container 
		signal: #selectionChanged: to: self attributeTreeModel selector: #setNewWidget:.
	self connectContainerToHistory: container.
	self ui centralScroller widget: container.
	self attributeTreeModel setNewWidget: container