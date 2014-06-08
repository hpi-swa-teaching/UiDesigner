updating
enableTableLayout: aBoolean
	aBoolean
		ifTrue: [self currentWidget changeTableLayout.]
		ifFalse: [self currentWidget layoutPolicy: nil; layoutChanged].
		
	self setNewWidget: self currentWidget.