properties
widgetProperties

	^ super widgetProperties, {{'Item View'. #yourself} -> {
		#modelClass -> Object.
		#horizontalHeaderVisible -> Boolean.
		#verticalHeaderVisible -> Boolean.
		#selectionBehavior -> #(selectCells selectRows selectColumns).
		"#selectionColor -> Object."
		#selectionMode -> Object}}