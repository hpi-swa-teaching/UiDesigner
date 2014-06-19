tests
test01NewTreeFrom

	| sut |
	sut := UiPropertyItemNode newTreeFrom: {
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

	self
		assert: 3 equals: sut childCount;
		assert: #apple equals: (sut childAt: 1) data;
		assert: #bean equals: (sut childAt: 2) data;
		assert: #tree equals: (sut childAt: 3) data;
		assert: 3 equals: (sut childAt: 1) childCount;
		assert: 2 equals: (sut childAt: 2) childCount;
		assert: 2 equals: (sut childAt: 3) childCount;
		assert: 2 equals: ((sut childAt: 1) childAt: 3) childCount;
		assert: #worm equals: (((sut childAt: 1) childAt: 3) childAt: 2) data.