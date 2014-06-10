initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	
	self connect: self eventHandler signal: #mousePressed: to: button selector: #press:.
	self connect: self eventHandler signal: #mousePressed: to: arrowButton selector: #press:.
	self connect: self eventHandler signal: #mousePressed: to: readOnlyButton selector: #press:.

	self connect: self eventHandler signal: #mouseReleased: toSelector: #passMouseUp:.
	self connect: self eventHandler signal: #mouseReleased: toSelector: #toggleList.