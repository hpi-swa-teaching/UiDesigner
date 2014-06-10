actions
doClick
	"#click is reserved for morphic event handling. Simulate a button click."
	
	self toggle.
	self clicked: self checked.