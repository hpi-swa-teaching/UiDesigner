model - callbacks
showMenuAt: aPoint on: aModelIndex

	aModelIndex menu ifNotNil: [:menu |
		"Overwrite target of menu items. Really good?"
		menu items do: [:item | self overrideMenuTarget: item].
		menu popUpNoKeyboard].