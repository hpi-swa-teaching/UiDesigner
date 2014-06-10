iterator api
previousSatisfying: aBlock forkAt: aPriority
	"Asynchronous version of #previousSatisfying:. The signal #indexFound: will be emitted when operation has finished."

	self fork: [
		| node |
		[(node := self previous) ~= self root] whileTrue: [
			(aBlock value: node) ifTrue: [self found: node; foundIndex: self currentIndex]].
		self finished] at: aPriority.