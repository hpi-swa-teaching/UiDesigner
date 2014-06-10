drawing
drawGroupSeparator: aMorph on: aCanvas
	"Override to consider maxItemExtent for line."
	
	self orientation == #horizontalSingleRow
		ifTrue: [aCanvas fullDrawMorph: aMorph. ^ self].
	
	self orientation == #default
		ifTrue: [^ super drawGroupSeparator: aMorph on: aCanvas].
	
	self orientation == #vertical
		ifTrue: [^ aCanvas
			translateBy: (0@ (maxItemExtent y - aMorph height))
			during: [:c | super drawGroupSeparator: aMorph on: c]].
			
	"horizontal"
	aCanvas fullDrawMorph: aMorph.
	
	(aMorph valueOfProperty: #drawLine) == true ifTrue: [
		aCanvas
			line: aMorph right @ aMorph center y
			to: aMorph right + maxItemExtent x - aMorph width @ aMorph center y
			color: (self groupSpec lineColor alpha: 0.4)].