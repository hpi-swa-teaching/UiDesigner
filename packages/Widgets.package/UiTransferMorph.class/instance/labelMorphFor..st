private
labelMorphFor: aString

	^ (UiItemViewMorph new
		font: UiPlatform current standardListFont;
		height: UiPlatform current standardListFont height + 2;
		width: (UiPlatform current standardListFont widthOfString: aString) + 10;
		labelColor: Color white;
		labelPosition: 5@0;
		color:((Color gray: 0.75) "alpha: 0.75");
		label: aString)