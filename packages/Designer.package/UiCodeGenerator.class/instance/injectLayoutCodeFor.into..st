codeInjection
injectLayoutCodeFor: aMorph into: stream

	aMorph hasTableLayout
		ifTrue: [stream crtab; nextPutAll: ('{1} changeTableLayout.' format: {
			aMorph valueOfProperty: #objectNameTemp})].
	aMorph hasProportionalLayout
		ifTrue: [stream crtab; nextPutAll: ('{1} changeProportionalLayout.' format: {
			aMorph valueOfProperty: #objectNameTemp})].