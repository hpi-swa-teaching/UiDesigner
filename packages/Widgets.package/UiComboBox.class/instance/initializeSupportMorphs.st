initialization
initializeSupportMorphs
	
	button := UiPushButton new
		text: nil;
		checkable: true;
		vResizing: #rigid;
		icon: UiButtonIcons bulletArrowDownSunkenIcon;
		layoutInset: (3@4 corner: 3@4).
		
	arrowButton := UiToolButton new "for #autoRaise in read-write-mode"
		buttonStyle: #iconOnly; "no text"
		checkable: true;
		vResizing: #rigid;
		icon: UiButtonIcons bulletArrowDownSunkenIcon;
		color: (Color gray: 0.85);
		layoutInset: (3@4 corner: 3@4).
	self connect: arrowButton signal: #toggled: toSelector: #toggleList.

	lineEdit := UiLineEdit new
		outerBorderWidth: 1.

	listWidget := UiListWidget new
		outerBorderWidth: 1.
	"The list widget behaves like a submorph for keyboard focus change."
	self connect: listWidget eventHandler signal: #focusReceivedInSubmorph: toSelector: #keyboardFocusChange:inSubmorph: pattern: #(=true 1).
	self connect: listWidget eventHandler signal: #focusLostInSubmorph: toSelector: #keyboardFocusChange:inSubmorph: pattern: #(=false 1).
	
	readOnlyButton := UiPushButton new
		text: ' ';
		icon: nil;
		checkable: true;
		hResizing: #spaceFill.