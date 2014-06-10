signals - unboxing
onCurrentIndexChanged: aModelIndex

	super onCurrentIndexChanged: aModelIndex.
	self currentTextChanged: self currentText.