signal spy
spyOn: aSignalOrArray
	"Overridden to spy on signals from event handler."
	
	aSignalOrArray isSymbol
		ifFalse: [aSignalOrArray do: [:s | spy addSender: sut eventHandler signal: s]]
		ifTrue: [spy addSender: sut eventHandler signal: aSignalOrArray].