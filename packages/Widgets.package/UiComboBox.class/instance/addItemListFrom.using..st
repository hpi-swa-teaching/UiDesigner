adding
addItemListFrom: someObjects using: aBlock
	"myComboBox addItemListFrom: #(a b c) using: [:symbol :listItem | listItem text: symbol]."

	| wasEmpty |
	wasEmpty := listWidget items isEmpty.

	listWidget
		addItemListFrom: someObjects
		using: aBlock.
		
	(wasEmpty and: [self readOnly])
		ifTrue: [self currentIndex: 1].