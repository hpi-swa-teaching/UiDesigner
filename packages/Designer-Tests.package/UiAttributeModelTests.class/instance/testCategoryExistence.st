tests
testCategoryExistence

	| categories |
	categories := {'General' . 'Geometry' . 'Layout settings' . 
					'Owner-specific layout' . 'Proportional layout' . 'Table layout' }.
	self assert: (categories size < model attributes size).
	model attributes do: [ :category | | categoryIndex |
		categoryIndex := categories indexOf: category.
		self assert: (categoryIndex > 0) equals: false.]