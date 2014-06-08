accessing
attributeTreeModel

	^ attributeTreeModel ifNil: [ attributeTreeModel := UiAttributeModel new ]