tests
test08Groups

	| sut |
	sut := UiPropertyItemNode new.
	sut groups: #(first second).
	sut addChild: UiPropertyItemNode new inGroup: #first.

	self
		assert: 2 equals: sut groups size;
		assert: 1 equals: (sut childCountInGroup: #first);
		assert: 0 equals: (sut childCountInGroup: #second).