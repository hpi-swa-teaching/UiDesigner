keyboard shortcut tables
initializeCmdKeyShortcuts
	"Make space for new shortcuts."
	super initializeCmdKeyShortcuts.

	#($u $t $f $o $e $y $g $w $h $k) do: [ :shortcut | cmdActions at: shortcut asciiValue + 1 put: #noop: ].
		
	cmdActions at: $t asciiValue + 1 put: #traceIt: