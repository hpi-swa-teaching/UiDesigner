initialization
initialize

	super initialize.
	self
		contents: '';
		autoFit: true;
		wrapFlag: true;
		margins: (3@0 corner: 3@0);
		installEditorToReplace: nil.