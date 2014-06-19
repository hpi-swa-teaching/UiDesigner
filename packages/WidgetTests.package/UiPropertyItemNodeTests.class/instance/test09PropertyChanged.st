tests
test09PropertyChanged

	| sut spy |
	sut := UiPropertyItemNode new.
	spy := SignalSpy onSender: sut signal: #propertiesChanged:.
	
	sut at: #foo put: #bar.
	self assert: #(#(foo)) equals: spy waitForNextSignal second.