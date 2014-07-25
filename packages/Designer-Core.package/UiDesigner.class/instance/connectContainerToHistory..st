history
connectContainerToHistory: aContainer

	self connect: aContainer signal: #morphAdded:into: to: self selector: #onMorphAdded:into:.
	self connect: aContainer 
		signal: #removedMorph:from: to: self selector: #onMorphRemoved:from:.
	aContainer submorphs do: [:each |
		(each class = UiContainer)
			ifTrue: [self connectContainerToHistory: each]].