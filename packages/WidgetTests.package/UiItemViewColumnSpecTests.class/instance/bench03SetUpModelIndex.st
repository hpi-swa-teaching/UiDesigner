as yet unclassified
bench03SetUpModelIndex
	"self new bench03SetUpModelIndex."
	
	| node view |
	self setUp.
	sut
		itemOrientation: #horizontal;
		textSelector: #text;
		iconSelector: #icon.
	
	node := (UiPropertyItemNode new
		at: #text put: 'Hello, World!';
		at: #icon put: UiButtonIcons plusSmallIcon;
		yourself).
	view := UiTreeView new.
	
	^ [(UiModelIndex
		row: 1 column: 1
		group: #all groupIndex: 1
		parent: nil "mt: not needed now"
		node: node
		spec: sut) in: [:index | view connectIndex: index. index]] bench