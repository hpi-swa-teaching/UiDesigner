accessing
getReverseCommand

	^ (UiDeleteMorphCommand newWith: (self relevantMorph) in: (self morphContainer))