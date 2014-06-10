initialization
initializeEditButtons

	| nextPageButton previousPageButton addPageButton removePageButton stackButton |
	nextPageButton := UiToolButton new
		autoRaise: true;
		icon: UiButtonIcons bulletArrowRightSunkenIcon;
		buttonStyle: #iconOnly;
		setBalloonText: 'Next Page'.

	self connect: nextPageButton signal: #clicked: toSelector: #nextPage.
		
	previousPageButton := UiToolButton new
		autoRaise: true;
		icon: UiButtonIcons bulletArrowLeftSunkenIcon;
		buttonStyle: #iconOnly;
		setBalloonText: 'Previous Page'.
	
	self connect: previousPageButton signal: #clicked: toSelector: #previousPage.

	addPageButton := UiToolButton new
		autoRaise: true;
		icon: UiButtonIcons plusSmallIcon;
		buttonStyle: #iconOnly;
		setBalloonText: 'Insert Page'.

	self connect: addPageButton signal: #clicked: toSelector: #insertPage.

	removePageButton := UiToolButton new
		autoRaise: true;
		icon: UiButtonIcons minusSmallIcon;
		buttonStyle: #iconOnly;
		setBalloonText: 'Remove Page'.

	self connect: removePageButton signal: #clicked: toSelector: #removeCurrentPage.

	stackButton := UiToolButton new
		autoRaise: true;
		icon: UiButtonIcons icon0418Small;
		buttonStyle: #iconOnly;
		setBalloonText: 'Select stack'.

	self connect: stackButton signal: #clicked: toSelector: #updateSelfSelection.
	
	buttonContainer := UiWidgetPageButtonContainer new.
	
	buttonContainer
		addMorphBack: stackButton;  
		addMorphBack: addPageButton;
		addMorphBack: removePageButton;
		addMorphBack: previousPageButton;
		addMorphBack: nextPageButton.