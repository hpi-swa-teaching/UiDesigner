private
updateFromParagraph

	| oldEditor |
	paragraph ifNil: [^self].
	wrapFlag ifNil: [wrapFlag := true].

	editor ifNotNil: 	[
		oldEditor := editor.
		editor storeSelectionInParagraph].

	text := paragraph text.

	paragraph textStyle ~= textStyle ifTrue: [
		self
			text: text textStyle: paragraph textStyle;
			releaseParagraph].

	self fit.

	"Reinstate selection after, eg, style change"
	editor ifNil: [self installEditorToReplace: oldEditor].