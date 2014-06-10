layouting
updateRowsVisibility

	| singleSeparators toplevelSeparators |
	self rows ifEmpty: [^ self].
	singleSeparators := OrderedCollection new.
	toplevelSeparators := OrderedCollection new.
	
	"Preprocessing: Apply selectBlock, collect seperators that want to be invisible of single."
	self rows do: [:row |
		row isSeparator ifTrue: [
			row parentModelIndex ifNil: [toplevelSeparators add: row].
			(row items first valueOfProperty: #hideIfSingle) == true
				ifTrue: [singleSeparators add: row]].
		row visible: (self selectBlock
			ifNil: [true]
			ifNotNil: [:filter |
				row isSeparator
					ifTrue: [true]
					ifFalse: [	filter value: row firstModelIndex node]])].
	
	self flag: #wrong. "mt: You need to check row visibility in order to determine empty groups."
	self rows overlappingPairsDo: [:rowInfo1 :rowInfo2 |
		rowInfo1 isSeparator ifTrue: [
			(rowInfo1 items first valueOfProperty: #hideAlways) == true
				ifTrue: [rowInfo1 visible: false]
				ifFalse: [((rowInfo2 isSeparator or: [rowInfo1 parentModelIndex ~= rowInfo2 parentModelIndex])
					and: [(rowInfo1 items first valueOfProperty: #hideIfEmpty) == true])
						ifTrue: [rowInfo1 visible: false]]].
					
		rowInfo2 isSeparator ifTrue: [
			(rowInfo1 parentModelIndex ~= rowInfo2 parentModelIndex
				and: [(rowInfo2 items first valueOfProperty: #hideIfFirst) == true])
					ifTrue: [rowInfo2 visible: false]]].

	self rows first isSeparator ifTrue: [
		((self rows first items first valueOfProperty: #hideAlways) == true
			or: [(self rows first items first valueOfProperty: #hideIfFirst) == true])
			ifTrue: [self rows first visible: false]].
	
	self rows last isSeparator ifTrue: [
		((self rows last items first valueOfProperty: #hideAlways) == true
			or: [(self rows last items first valueOfProperty: #hideIfEmpty) == true])
			ifTrue: [self rows last visible: false]].

	"Hide single group separators if they want so."
	singleSeparators do: [:row |
		(row parentModelIndex
			ifNil: [toplevelSeparators size > 1]
			ifNotNil: [row parentModelIndex node groups size > 1])
				ifFalse: [row visible: false]].