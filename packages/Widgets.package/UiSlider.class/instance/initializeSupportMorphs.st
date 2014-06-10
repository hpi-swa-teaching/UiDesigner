initialization
initializeSupportMorphs

	pagingMorph := Morph new
		borderStyle: (BorderStyle inset width: 1);
		color: (Color gray: 0.85);
		hResizing: #spaceFill;
		height: 5.  
			
	sliderButton := UiSliderButton new.