code generation
generateUiClassFor: aMorph

	source := aMorph.
	
	"This is the root."
	source objectName: #panel.
	
	#(class accessors panel) do: [:step |
		step == #class ifTrue: [self createUiClass].
		step == #accessors ifTrue: [self createAccessors].
		step == #panel ifTrue: [self createUiPanelCode]]
	displayingProgress: [:step | 
		(Dictionary newFrom: {#class -> 'Preparing class container...'.
			#accessors -> 'Creating accessors for named ui objects...'.
			#panel -> 'Generate initialization code...'})
			at: step].