updating
updateCurrentRow: anIndex

	lineEdit theText: listWidget currentText.
	
	readOnlyButton text: listWidget currentText.
	readOnlyButton icon: listWidget currentIcon.
	
	self currentIndexChanged: anIndex text: (self converter value: lineEdit theText).
	self currentTextChanged: (self converter value: lineEdit theText).