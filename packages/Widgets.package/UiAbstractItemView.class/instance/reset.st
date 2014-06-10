model - initialization
reset

	| selectedIndices currentIndex |
	selectedIndices := self selection selectedIndices.
	currentIndex := self selection currentIndex.

	self viewport clear.
	
	"Ensure the correct number of columns."
	self viewport limitColumnCount: self columnSpecs size.
	self columnSpecs with: self viewport columns do: [:spec :info |
		info hAlignment: spec hAlignment.
		info vAlignment: spec vAlignment].
	self resetHeaderItems.
	
	(self model notNil and: [self columnSpecs notEmpty]) ifTrue: [		
		self fillViewportFor: nil animated: false].

	"Restore selection if any."
	selectedIndices
		ifEmpty: [self updateViewportLayout]
		ifNotEmpty: [ | parentIndices |
			parentIndices := ((selectedIndices collect: [:i | i parent]) reject: [:i | i isNil]) asSet.

			self flag: #expensive. "mt: Improve performance here?"
			[
				parentIndices
					ifEmpty: [self updateViewportLayout]
					ifNotEmpty: [self expandIndices: parentIndices].
			
				self selection selectedIndices: selectedIndices.
				self selection currentIndex ifNil: [self selection currentIndex: currentIndex].
			] on: Error do: []].