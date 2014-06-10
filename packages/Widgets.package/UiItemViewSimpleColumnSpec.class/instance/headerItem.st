building
headerItem

	| item |	
	item := UiItemViewMorph new
		form: self headerIcon;
		label: (self headerText ifNil: [''] ifNotNil: [:t | t asString]);
		font: UiPlatform current standardListFont;
		color: nil;
		labelColor: Color black;
		balloonText: self headerBalloonText;	
		yourself.

	self doLayoutFor: item.	
	
	^ item