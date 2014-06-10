accessing - converting
editorAcceptSignal
	"Signal that should be listened for to finish the editing."
	
	^ editorAcceptSignal ifNil: [#returnPressed:]