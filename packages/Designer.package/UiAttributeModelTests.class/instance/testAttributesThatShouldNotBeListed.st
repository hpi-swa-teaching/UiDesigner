tests
testAttributesThatShouldNotBeListed
	| badOnes |
	
	badOnes := { 'submorphs' . 'owner' . 'extension' }.
	
	badOnes do: [ :attribute | self assert: (model isGoodForModification: attribute) equals: false ]