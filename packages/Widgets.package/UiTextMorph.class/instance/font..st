accessing
font: aFont

	super font: aFont.
	
	"Store given font index as default font in text style."
	textStyle defaultFontIndex: (textStyle fontIndexOf: aFont).
	
	self styler ifNotNil: [self styler font: aFont].