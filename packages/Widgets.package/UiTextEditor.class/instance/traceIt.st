actions
traceIt

	| rcvr ctxt |
	self lineSelectAndEmptyCheck: [^ ''].

	(model respondsTo: #doItReceiver) 
		ifTrue: [ rcvr := model doItReceiver.
				ctxt := model doItContext]
		ifFalse: [rcvr := ctxt := nil].

	SystemChangeNotifier uniqueInstance
		traceSourceCode: self selection asString
		context: ctxt
		receiver: rcvr.