model - initialization
fillViewportFor: aModelIndex animated: aBoolean
	"Optimized for performance."
	
	self model ifNil: [^ self].
	
	^ super fillViewportFor: aModelIndex animated: aBoolean