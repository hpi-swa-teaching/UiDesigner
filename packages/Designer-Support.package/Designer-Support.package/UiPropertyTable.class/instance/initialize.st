initialization
initialize

	super initialize.
	self
		color: (Color gray: 0.95);
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #rigid;
		vResizing: #shrinkWrap.
		
	editorFactory := UiPropertyEditorFactory new.