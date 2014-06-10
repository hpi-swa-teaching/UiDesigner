accessing
text: aText

	self hResizing = #shrinkWrap
		ifTrue: [text contents: aText asHtmlText]
		ifFalse: [text contentsWrapped: aText asHtmlText].
	self updateSubmorphs.