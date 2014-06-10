scrolling
scrollToShowSelection
	"Center current selection in view. If too big, show the top of the selection."

	| rect |
	"Keep the current selection visible."
	anchoredSelection := self selection.
	
	rect := self textMorph editor selectionBlock.
	rect height > self height
		ifTrue: [rect := rect insetBy: (0@0 corner: 0@ (rect height - self height))].
		
	self scrollToShow: (rect outsetBy: (0@ ((self height - rect height) // 2))).