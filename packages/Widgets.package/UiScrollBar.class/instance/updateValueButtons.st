updating
updateValueButtons

	self orientation = #horizontal
		ifTrue: [
			decreaseValueButton1 ifNotNil: [:btn | btn direction: #left; width: self defaultThickness].
			decreaseValueButton2 ifNotNil: [:btn | btn direction: #left; width: self defaultThickness].
			increaseValueButton ifNotNil: [:btn | btn direction: #right; width: self defaultThickness]]
		ifFalse: [
			decreaseValueButton1 ifNotNil: [:btn | btn direction: #up; height: self defaultThickness].
			decreaseValueButton2 ifNotNil: [:btn | btn direction: #up; height: self defaultThickness].
			increaseValueButton ifNotNil: [:btn | btn direction: #down; height: self defaultThickness]].
