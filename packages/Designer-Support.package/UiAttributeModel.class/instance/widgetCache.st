accessing
widgetCache

	^ widgetCache ifNil: [ widgetCache := IdentityDictionary new ]