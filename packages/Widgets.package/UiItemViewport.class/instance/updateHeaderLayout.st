layouting
updateHeaderLayout
	"Relayout changed header items."
	
	self horizontalHeader ifNotNil: [:hh |
		hh removeAllMorphs.
		self columnsDo: [:colInfo | colInfo headerItem ifNotNil: [:hi |
			hh addMorphBack: hi]]].
	self verticalHeader ifNotNil: [:vh |
		vh removeAllMorphs.
		self rowsDo: [:rowInfo | rowInfo headerItem ifNotNil: [:hi |
			vh addMorphBack: hi]]].