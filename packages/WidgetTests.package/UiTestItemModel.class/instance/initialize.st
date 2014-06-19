as yet unclassified
initialize

	super initialize.
	
	data := UiPropertyItemNode newFrom: {
	#apple -> {
		#green -> {}.
		#yellow -> {}.
		#brown -> {
			#noWorm -> {}.
			#worm -> {}}}.
	#bean -> {
		#lima -> {
			#big -> {}.
			#small -> {}}.
		#unspecified -> {}}.
	#tree -> {
		#needles -> {
			#long -> {}.
			#short -> {}}.
		#leafes -> {}}}.
