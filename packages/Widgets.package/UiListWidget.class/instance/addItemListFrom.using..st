add/remove
addItemListFrom: someObjects using: aBlock
	"Constructs list widget items for each given objects and gives the chance to configure those items using the binary block. The string representation of an object will be used by default.
	
	self
		addItemListFrom: PackageOrganizer default packageNames
		using: [:pName :item | | mc |
			mc := MCPackage named: pName.
			mc hasWorkingCopy ifTrue: [item text: mc workingCopy description]]"
	
	self model addAllChildren: (someObjects collect: [:obj | | item |
		item := self createItem text: obj asString; yourself.
		aBlock value: obj value: item.
		item]) inGroup: #items.