initialization
initializeContainer

	container
		editMode: true;
		color: Color lightGray ;
		dragEnabled: false.
		
	self connect: container signal: #selectionChanged: to: propertyTable selector: #updateProperties:.
	
	self ui centralScroller widget: container.
	
	propertyTable updateProperties: container.