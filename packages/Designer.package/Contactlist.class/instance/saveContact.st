initialization
saveContact 

	| child |
	child := UiPropertyItemNode new.
	
	child := UiPropertyItemNode new.
	child at: #firstname put: self ui firstNameInput theText.
	child at: #lastname put: self ui lastNameInput theText.
	child at: #city put: self ui cityInput theText.
	child at: #phone put: self ui phoneInput theText.
	child at: #email put:  self ui eMailInput theText.
	model addChild: child.