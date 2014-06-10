accessing
widgetProperties

	^ super widgetProperties, {{'Text Edit'. #yourself} -> {
		#theText -> String.
		#readOnly -> Boolean.
		#autoConvert -> Boolean.
		#autoAccept -> Boolean.
		#acceptOnFocusLost -> Boolean.
		#scrollingMode -> #(none never limit always).
		#scrollingLimit -> Integer}}