updating
updateWidgets

	widgets := OrderedCollection new.
	
	Morph allSubclassesDo: [:c |
		(UiPlatform current
			string: c widgetClassName asLowercase
			includesSubstring: self nameFilter asString asLowercase)
				ifTrue: [widgets add: (UiPropertyItemNode new
					at: #class put: c;
					yourself)]].

	self modelReset.