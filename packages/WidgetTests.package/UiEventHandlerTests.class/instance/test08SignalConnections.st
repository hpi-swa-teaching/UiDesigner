tests
test08SignalConnections

	self
		assert: sut eventHandler signalConnections isEmpty;
		deny: (SignalConnectionsRepository instance includesKey: sut eventHandler);  
		spyOn: #mouseClicked:;
		assert: 1 equals: sut eventHandler signalConnections size;
		deny: (SignalConnectionsRepository instance includesKey: sut eventHandler).
		
	sut eventHandler disconnectAllSignals.
	self assert: sut eventHandler signalConnections isEmpty.
	
	self spyOn: #mouseReleased:.
	sut eventHandler disconnectSignal: #mouseReleased: from: spy.
	self assert: sut eventHandler signalConnections isEmpty.