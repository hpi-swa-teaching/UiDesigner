properties
widgetProperties

	^ super widgetProperties, {{'Button'. #yourself} -> {
		#enabled -> Boolean.
		#icon -> Form.
		#text -> String.
		#color -> Object.
		#checkable -> Boolean.
		#checked -> Boolean.
		#autoExclusive -> Boolean}}