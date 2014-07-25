accessing
getReverseCommand

	^ (UiAddMorphCommand newWith: (self relevantMorph) in: (self morphContainer))