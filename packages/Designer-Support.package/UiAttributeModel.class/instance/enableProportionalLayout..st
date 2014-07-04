updating
enableProportionalLayout: aBoolean
	aBoolean
		ifTrue:  [self currentWidget changeProportionalLayout]
		ifFalse: [self currentWidget layoutPolicy: nil; layoutChanged].
		
	self setNewWidget: self currentWidget.