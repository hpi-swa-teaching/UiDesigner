model - callbacks
changeAllItems
	"Update all visible items."

	| item useAnimation |
	useAnimation := self isAnimated.
		
	self columnSpecs withIndexDo: [:spec :id |
		(self viewport columns at: id) indices do: [:index |
			item := index item.
			self viewport replaceMorphWith: item atIndex: index.
			useAnimation ifTrue: [item fadeIn]]].
		
	self updateViewportLayout.