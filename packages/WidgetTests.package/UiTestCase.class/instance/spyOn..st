signal spy
spyOn: aSignalOrArray
	"Convenient method to watch a signal sent by sut."
	
	aSignalOrArray isSymbol
		ifFalse: [aSignalOrArray do: [:s | spy addSender: sut signal: s]]
		ifTrue: [spy addSender: sut signal: aSignalOrArray].