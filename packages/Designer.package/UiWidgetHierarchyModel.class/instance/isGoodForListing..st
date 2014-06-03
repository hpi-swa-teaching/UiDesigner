accessing
isGoodForListing: aMorph
	| isOnBlacklist isUiWidget |
	
	isOnBlacklist := self blacklistedMorphs indexOf: (aMorph class).
	isUiWidget := (aMorph class asString) indexOfSubStringWithEmpty: 'Ui' caseSensitive: false.
	
	 ^ ( (isOnBlacklist = 0) and: (isUiWidget ~= 0) ) 