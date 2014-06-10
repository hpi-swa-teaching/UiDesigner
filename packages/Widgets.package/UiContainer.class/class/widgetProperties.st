properties
widgetProperties

	^ super widgetProperties, {{'Container'. #yourself} -> {
		#color -> Object.
		#borderWidth -> Integer.
		#borderStyle2 -> #(simple inset raised).
		#borderColor -> Object}}