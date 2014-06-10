accessing
widgetProperties

	^ super widgetProperties, {{'Line Edit'. #yourself} -> {
		#helpText -> String.
		#hideCursor -> Boolean}}