codeInjection
injectUiCodeFor: aMorph into: stream

	| creationTemplate submorphTemplate nameTemplate descrTemplate |
	creationTemplate := '{1} := {2} new.'.
	submorphTemplate := '{1} addChild: {2}.'.
	nameTemplate := '{1} setProperty: #objectName toValue: ''{1}''.'.
	descrTemplate := '{1} setProperty: #objectDescription toValue: ''{2}''.'.

	"Create aMorph."
	stream crtab; nextPutAll: (creationTemplate format: {
		aMorph valueOfProperty: #objectNameTemp.
		aMorph class name}).
	
	"Initialize aMorph."
	aMorph hasTableLayout
		ifTrue: [stream crtab; nextPutAll: ('{1} changeTableLayout.' format: {
			aMorph valueOfProperty: #objectNameTemp})].
	aMorph hasProportionalLayout
		ifTrue: [stream crtab; nextPutAll: ('{1} changeProportionalLayout.' format: {
			aMorph valueOfProperty: #objectNameTemp})].
	
	#(extent position hResizing vResizing minWidth minHeight cellInset cellPositioning cellSpacing layoutInset listCentering listDirection listSpacing maxCellSize minCellSize wrapCentering wrapDirection frameFractions frameOffsets) do: [:property |
		self injectUiCodeFor: aMorph property: property into: stream].
	
	self injectCustomUiCodeFor: aMorph into: stream.
	
	aMorph objectName ifNotEmpty: [
		stream crtab; nextPutAll: (nameTemplate format: {
			aMorph objectName.
			aMorph objectName.})].
	aMorph objectDescription ifNotEmpty: [
		stream crtab; nextPutAll: (descrTemplate format: {
			aMorph valueOfProperty: #objectNameTemp.
			aMorph objectDescription.})].
	
	"Let my submorphs initialize."
	(aMorph isKindOf: UiContainer)
		ifTrue: [
			aMorph children do: [:m |
				self injectUiCodeFor: m into: stream.
				stream crtab; nextPutAll: (submorphTemplate format: {
					aMorph valueOfProperty: #objectNameTemp.
					m valueOfProperty: #objectNameTemp.})]].