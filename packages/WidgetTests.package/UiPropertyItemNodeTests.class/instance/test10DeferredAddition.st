tests
test10DeferredAddition

	| sut spy |
	sut := UiPropertyItemNode new.
	spy := SignalSpy onSender: sut signal: #childrenInsertedFrom:to:inGroup:.
	
	sut
		addGroup: #first;
		addGroup: #second;
		deferThreshold: 3;  
		beginDeferAdd;
		addChild: UiPropertyItemNode new inGroup: #first;
		addChild: UiPropertyItemNode new inGroup: #first;
		addChild: UiPropertyItemNode new inGroup: #second.
		
	self
		assert: #(1 2 first) equals: spy waitForNextSignal second;
		assert: #(1 1 second) equals: spy waitForNextSignal second.
		
	sut
		addChild: UiPropertyItemNode new inGroup: #second;
		endDeferAdd.
		
	self assert: #(2 2 second) equals: spy waitForNextSignal second.