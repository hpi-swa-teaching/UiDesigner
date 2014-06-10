model - callbacks
changeAllItemsWithProperties: someProperties
	"Update all columns that contain at least one of the given properties."
	
	| item useAnimation |
	useAnimation := self isAnimated.
	
	self columnSpecs withIndexDo: [:spec :id |
		(spec includesAnyProperty: someProperties) ifTrue: [
			(self viewport columns at: id) indices do: [:index |
				item := index item.
				self viewport replaceMorphWith: item atIndex: index.
				useAnimation ifTrue: [item fadeIn]]]].
	
	self updateViewportLayout.