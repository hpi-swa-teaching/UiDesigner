accessing
buttonStyle: aStyle
	"#iconOnly #textOnly #textBesideIcon #textUnderIcon"

	aStyle = buttonStyle ifTrue: [^ self].
	
	buttonStyle := aStyle.
	
	self updateSubmorphs.