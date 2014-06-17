codeInjection
injectSubmorphCodeFor: aMorph into: stream with: aGenerator

	(aMorph isKindOf: UiContainer)
		ifTrue: [
			aMorph children do: [:m |
				self injectUiCodeFor: m into: stream with: aGenerator.
				stream crtab; nextPutAll: (self submorphTemplate format: {
					aMorph valueOfProperty: #objectNameTemp.
					m valueOfProperty: #objectNameTemp.})]].