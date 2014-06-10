drawing - specific
drawToolButtonEnabledOn: aCanvas

	"Consider #autoRaise flag."
	((self morph checked not
		and: [self morph autoRaise])
		and: [self morph raised not])
			ifTrue: [^ self].

	"Reuse drawing code from push buttons."
	self enableHighlight.
	self drawPushButtonEnabledOn: aCanvas.