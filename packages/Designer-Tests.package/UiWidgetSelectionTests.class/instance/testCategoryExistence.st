testing
testCategoryExistence 
	| categories |
	
	categories := { 'Classic Morphs' . 'Containers & Spacer' . 'Input Widgets' . 'Buttons' . 'Display Widgets' . 'Item Views (Model-Based)' . 'Item Widgets (Item-Based)' . 'Separators'}.
	
	self assert: (categories size = model widgets size).
	
	model widgets do: [ :category | | categoryIndex |
		categoryIndex := categories indexOf: category.
		
		self assert: (categoryIndex > 0) equals: false.
		]