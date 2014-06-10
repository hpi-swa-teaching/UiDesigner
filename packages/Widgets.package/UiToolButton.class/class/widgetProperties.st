properties
widgetProperties

	^ super widgetProperties, {{'Tool Button'. #yourself} -> {
		#autoRaise -> Boolean.
		#buttonStyle -> #(iconOnly textOnly textBesideIcon textUnderIcon)}}