accessing
editTriggers

	^ editTriggers ifNil: [editTriggers := #(editKeyPressed doubleClicked)]