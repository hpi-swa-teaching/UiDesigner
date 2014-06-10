initialization
setTable 
   	| child |
	
	
	self ui view 
		addColumn: 'First name' for: ((UiItemViewColumnSpec newFrom: {#text->#firstname}));
		addColumn: 'Last name' for:  ((UiItemViewColumnSpec newFrom: {#text->#lastname}));
		addColumn: 'City' for:  ((UiItemViewColumnSpec newFrom: {#text->#city}));
		addColumn: 'Phone' for: ((UiItemViewColumnSpec newFrom: {#text->#phone}));
		addColumn: 'Email' for: ((UiItemViewColumnSpec newFrom: {#text->#email})).
			
	model := UiPropertyItemNode new.	
		
	child := UiPropertyItemNode new.
	child at: #firstname put: 'FirstName'.
	child at: #lastname put: 'LastName'.
	child at: #city put: 'City'.
	child at: #phone put: 'Phone'.
	child at: #email put: 'Email'.
	
	model addDefaultGroup.
	
		
	self ui view
		model: model.