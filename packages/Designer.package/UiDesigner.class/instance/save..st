save/load
save: checkboxChecked
	
	| generator warnings warningsDialog|
	
	generator := UiCodeGenerator new
		category: self ui packageNameEdit theText;
		source: container.

	
	warnings := {
		[(container hasProperty: #uiClassName) not] -> ('The user interface is unnamed and
defaults to <b>', container uiClassName,'</b>.').
		[Smalltalk includesKey: generator uiClassName asSymbol] -> ('The class <b>', generator uiClassName, '</b> already exists
and will be overwritten.').
		[container color = Color transparent] -> 'The outermost widget container is
<b>transparent</b>.'}.
	
	warningsDialog := UiMessageListDialog new.
	(warnings count: [:assoc |
		assoc key value
			ifTrue: [warningsDialog addIcon: UiFugueIcons exclamationFrameIcon text: assoc value asHtmlText. true]
			ifFalse: [false]]) > 0 ifTrue: [((warningsDialog show: 'Really save the design?' in: self) ifNil: [false]) ifFalse: [^ self]].
	
	Cursor wait showWhile:[
		generator generateUiClassFor: container.
		checkboxChecked
			ifTrue: [generator generateSurroundingClass. ].
		
		self expandWidgetCategories.	
		self addRecentDesign: generator uiClassName asSymbol].
	
	self openSavedDialog: generator dependingOn: checkboxChecked.
	
			
