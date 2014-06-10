accessing
widgetProperties

	^ super widgetProperties, {{'Label'. #yourself} -> {
		#text -> String.
		#form -> Form}}