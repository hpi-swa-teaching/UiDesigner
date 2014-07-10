codeInjection
injectSubmorphCodeFor: aMorph into: stream with: aGenerator

	(aMorph isKindOf: UiContainer)
		ifTrue: [
			aMorph children do: [:m |
				stream crtab; nextPutAll: (self submorphTemplate format: {
					aMorph valueOfProperty: #objectNameTemp.}).
				self injectUiCodeFor: m into: stream with: aGenerator.]].