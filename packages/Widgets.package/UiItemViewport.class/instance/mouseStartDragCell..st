events
mouseStartDragCell: evt 
	
	evt hand hasSubmorphs ifTrue: [^ self].
	self dragEnabled ifFalse: [^ self].
	
	[ | nodes |

	"unboxing to not give model index to the outside"	
	(nodes := self selection selectedIndices collect: [:index | index node])
		ifEmpty: [^ self].

	evt hand grabMorph: (self dragDropSpec transferItemFor: nodes asOrderedCollection)]
		ensure: [Cursor normal show.
			evt hand releaseMouseFocus: self]