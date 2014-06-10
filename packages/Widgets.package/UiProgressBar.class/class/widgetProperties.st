accessing
widgetProperties

	^ super widgetProperties, {{self widgetClassName. #yourself} -> {
		#text -> String.
		#minimum -> Integer.
		#maximum -> Integer.
		#currentValue -> Integer.
		}.
		{self widgetClassName, ' - Colors'. #yourself} -> {
		#color -> Object.
		#textColor -> Object.
		#backgroundColor -> Object.
		#backgroundTextColor -> Object}}