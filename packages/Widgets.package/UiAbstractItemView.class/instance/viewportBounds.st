geometry
viewportBounds

	| rect |
	rect := super viewportBounds.
	
	self hasVerticalHeader ifTrue: [
		rect := rect insetBy: (verticalHeader width @ 0 corner: 0@0)].

	self hasHorizontalHeader ifTrue: [
		rect := rect insetBy: (0 @ horizontalHeader height corner: 0@0)].

	^ rect