*widgets-designer
widgetProperties

	^super widgetProperties, {{self widgetClassName. #yourself} -> {
		#orientation -> #(horizontal vertical).
		#breadth -> Integer.
		#dashColor -> Object.
		#dashLength -> Integer.
		#backgroundColor -> Object.
		#backgroundDashLength -> Integer.
		#startingOffset -> Integer.
		}}