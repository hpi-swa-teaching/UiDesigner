accessing
optimalWidth
	"Calculate the optimal with for the default font based of line breaks."
	
	| maxWidth |
	maxWidth := 0.
	(self theText asString copyReplaceAll: String tab with: '   ')
	   linesDo: [:line | 
			maxWidth := maxWidth max: (self textMorph textStyle defaultFont widthOfString: line)].
		
	^ maxWidth + self scrollBarThickness + 20 