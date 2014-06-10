accessing
widgetProperties

	^ super widgetProperties, {{'Slider'. #yourself} -> {
		#orientation -> #(horizontal vertical).
		#minimum -> Integer.
		#maximum -> Integer.
		#currentValue -> Integer.
		#sliderPosition -> Integer.
		#tracking -> Boolean.
		#singleStep -> Integer.
		#pageStep -> Integer.
		#truncate -> Boolean.
		}}