accessing
ui

	^ ui ifNil: [ui := self uiClass new]