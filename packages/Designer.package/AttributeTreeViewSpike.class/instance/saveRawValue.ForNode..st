as yet unclassified
saveRawValue: value ForNode: node
	| callback result |
	
	callback := node at: #saveCallback ifAbsent: nil.
	result := self convertEditedValueForNode: node FromText: value.
	
	callback ifNil: [ treeModel changeProperty: (node at: #propertyName) To: result. ]
			 ifNotNil: [ callback value: result ].