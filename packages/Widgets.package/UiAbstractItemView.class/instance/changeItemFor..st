model - callbacks
changeItemFor: aModelIndex

	| item |
	"Check if node is visible."
	(self viewport isExpanded: aModelIndex parent)
		ifFalse: [^ self].
	
	item := aModelIndex item.
	self viewport replaceMorphWith: item atIndex: aModelIndex.
	self isAnimated ifTrue: [item fadeIn].
	
	self
		updateViewportLayout;
		changed: aModelIndex node.