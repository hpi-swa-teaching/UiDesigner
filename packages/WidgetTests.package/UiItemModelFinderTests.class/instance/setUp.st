running
setUp

	super setUp.
	sut root: (UiPropertyItemNode newTreeFrom: {
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
		#leafes -> {}}}).