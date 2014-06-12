code generation
injectSubmorphCodeFor: aMorph into: stream

	(aMorph isKindOf: UiContainer)
		ifTrue: [
			aMorph children do: [:m |
				self injectUiCodeFor: m into: stream.
				stream crtab; nextPutAll: (self submorphTemplate format: {
					aMorph valueOfProperty: #objectNameTemp.
					m valueOfProperty: #objectNameTemp.})]].