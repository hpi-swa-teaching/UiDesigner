initialization
initializeTreeView
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
				textConverter: [:node | node at: #className ]).