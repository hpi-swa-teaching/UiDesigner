model - callbacks
overrideMenuTarget: aMenuItem

	aMenuItem target: self model.
	aMenuItem subMenu ifNotNil: [:menu |
		menu items do: [:item | self overrideMenuTarget: item]].