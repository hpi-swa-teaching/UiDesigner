history
disconnectContainerFromHistory: aContainer

	self disconnectSignal: aContainer from: self selector: #onMorphAdded:into:.
	self disconnectSignal: aContainer from: self selector: #onMorphRemoved:from:.
	aContainer submorphs do: [:each |
		(each class = UiContainer)
			ifTrue: [self disconnectContainerFromHistory: each]].