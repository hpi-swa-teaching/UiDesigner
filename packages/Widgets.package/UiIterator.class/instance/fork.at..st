iterator api - private
fork: aBlock at: aPriority

	process ifNotNil: [
		process terminate.
		self cancelled].

	process := aBlock forkAt: aPriority.