as yet unclassified
initialize
	
	| model view child editor |
	model := UiPropertyItemNode new.
	view := UiListView new.
	
	view  listSpec: (UiItemViewColumnSpec  newFrom: {
		#text -> #name.
		#icon -> #image.
		#morph -> #editor.
		#checkable -> true.
		#checked -> #checked. }).
		
	view openInHand.
	view model: model.
	
	child :=  UiPropertyItemNode new.
	child at: #checked put: true.
	
	model addDefaultGroup.
	model addChild: child.
	
	child at: #checked.
	child at: #name put: #foobar.
	"child at: #image put: #UiSilkIcons diskIcon."
	
	editor := UiComboBox new.
	
	child at: #editor put: editor.
	
	"self connct: editor signal: #editingFinished: to:"
