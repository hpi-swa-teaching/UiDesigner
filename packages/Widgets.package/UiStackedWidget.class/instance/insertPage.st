add/remove
insertPage
	"Morphic designer only."
	
	self
		insertPage: (UiWidgetPage new editMode: self editMode)
		behind: self currentPage.