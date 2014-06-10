accessing
widgetProperties

	^ super widgetProperties, {{'List View'. #yourself} -> {
		#listOrientation -> #(default horizontal vertical).
		#hAlignment -> #(left center right).
		#vAlignment -> #(top center bottom)}}