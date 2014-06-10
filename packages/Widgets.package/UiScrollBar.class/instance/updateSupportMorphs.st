updating
updateSupportMorphs

	"General layout."
	self orientation = #horizontal ifTrue: [
		self listDirection: #leftToRight.
		(#(distant both) includes: self buttonMode) ifTrue: [self layoutInset: (-1@0 corner: -1@0)].
		self buttonMode == #adjacent ifTrue: [self layoutInset: (0@0 corner: -1@0)].
		self buttonMode == #none ifTrue: [self layoutInset: 0]]. 
	self orientation = #vertical ifTrue: [
		self listDirection: #topToBottom.
		(#(distant both) includes: self buttonMode) ifTrue: [self layoutInset: (0@ -1 corner: 0@ -1)].
		self buttonMode == #adjacent ifTrue: [self layoutInset: (0@0 corner: 0@ -1)].
		self buttonMode == #none ifTrue: [self layoutInset: 0]].

	"Button visibility."
	{#(distant both) -> decreaseValueButton1.
	#(adjacent both) -> decreaseValueButton2} do: [:assoc |
		(assoc key includes: self buttonMode)
			ifTrue: [assoc value ifNotNil: [:btn | btn showFull]]
			ifFalse: [assoc value ifNotNil: [:btn | btn hideFull]]].

	self buttonMode = #none
		ifTrue: [increaseValueButton ifNotNil: [:btn | btn hideFull]]
		ifFalse: [increaseValueButton ifNotNil: [:btn | btn showFull]].

	"Other geometry."
	self
		updateValueButtons;
		updateSliderButton.