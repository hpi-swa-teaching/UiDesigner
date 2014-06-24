accessing
initializeTreeView
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself})
				iconConverter: [:node | (node at: #classIcon) widgetClassIcon];
				textConverter: [:node | node at: #className ]).
				
	self connect: (self ui treeView) signal: #doubleClicked: to: self selector: #selectWidget:..
