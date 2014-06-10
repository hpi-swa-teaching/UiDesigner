drag/drop
wantsDroppedMorph: aMorph event: event

	^ ((super wantsDroppedMorph: aMorph event: event)
		and: [aMorph isKindOf: TransferMorph])
		and: [self dragDropSpec acceptBlock value: aMorph]