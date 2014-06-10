updating
updateVisibilityForCheckBoxesFor: newCell old: oldCell

	(oldCell notNil and: [oldCell y <= rows size]) ifTrue: [
		(self rowAt: oldCell y) items do: [:item | (item valueOfProperty: #checkBox)
			ifNotNil: [:chk | chk checked ifFalse: [chk hide]]]].

	(newCell notNil and: [newCell y <= rows size]) ifTrue: [
		(self rowAt: newCell y) items do: [:item | (item valueOfProperty: #checkBox)
			ifNotNil: [:chk | chk show]]].