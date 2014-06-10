accessing
acceptBlock
	"See TransferMorph for accessible fields. This block is called to check whether the object should be dropped in the view that uses this spec."

	^ acceptBlock ifNil: [acceptBlock := [:transferMorph | true]]