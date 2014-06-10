signals - unboxing
onCurrentIndexChanged: aModelIndex

	self currentNodeChanged: (aModelIndex ifNotNil: [:index | index node]).