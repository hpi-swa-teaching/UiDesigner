accessing
widgetProperties

	^ super widgetProperties, {{'Scroll Bar'. #yourself} -> {
		#buttonMode -> #(none distant adjacent both).
		}}