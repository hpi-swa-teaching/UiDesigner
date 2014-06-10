attribute editing
convertEditedValueForNode: node FromText: text
	| result |
	
	((node at: #type) = Collection) 
		ifTrue: [ result := text asString asSymbol.
				node at: #propertyValue put: result ]
			
		ifFalse: [
			((node at: #type) = String) 
				ifTrue: [ result := text asString.
						node at: #propertyValue put: result ]
				ifFalse: [ result := Compiler evaluate: (text asString).
						(result isKindOf: (node at: #type)) ifTrue: [node at: #propertyValue put: result ] ] ].
		
	^ result
