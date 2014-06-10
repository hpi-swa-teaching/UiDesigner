defaults
defaultItemExtent

	^ ((self newFrom: {#text -> #text. #icon -> #icon})
		itemFor: UiItemModelNullNode new) extent