iterator api
nextSatisfying: aBlock forkAt: aPriority
	"Asynchronous version of #nextSatisfying:. The signal #indexFound: will be emitted when operation has finished."

	self fork: [
		| node |
		[(node := self next) notNil] whileTrue: [
			(aBlock value: node) ifTrue: [self found: node]].
		self finished] at: aPriority.