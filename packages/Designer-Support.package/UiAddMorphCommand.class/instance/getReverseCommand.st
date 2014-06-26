as yet unclassified
getReverseCommand
	^ (UiDeleteMorphCommand newWith: (self relevantMorph) in: (self morphContainer))