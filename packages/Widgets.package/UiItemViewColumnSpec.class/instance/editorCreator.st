accessing - converting
editorCreator
	"A block that creates an editor given the node that needs to be edited."
	
	^ editorCreator ifNil: [editorCreator := [:spec :node |
			UiLineEdit new
				hideCursor: false;
				outerBorderWidth: 0;
				font: UiPlatform current standardListFont;
				theText: (spec textFor: node); selectAll]].