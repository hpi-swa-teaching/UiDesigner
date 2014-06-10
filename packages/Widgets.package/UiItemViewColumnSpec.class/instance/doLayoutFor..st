building
doLayoutFor: aMorph

	| offset |
	self itemOrientation = #horizontal ifTrue: [
		"All submorphs vertically centered. Text morph dictates height."
		
		aMorph submorphs last isTextMorph
			ifTrue: [ | fontHeight |
				fontHeight := aMorph submorphs last textStyle defaultFont height.
				(fontHeight * 2) < aMorph submorphs last height
					"More than one line?"
					ifTrue: [aMorph height: aMorph submorphs last height]
					ifFalse: [aMorph height: fontHeight]]
			ifFalse: [
				aMorph height: aMorph submorphs last fullBounds height].
				
		"Manual layouting."
		offset := (aMorph left + 3) @ 1.
		aMorph submorphs do: [:m |
			m left: offset x.
			offset := offset + ((m width + 2) @ 0).
			m top: aMorph top - (m height - aMorph height // 2) + offset y].
	
		"Expand item horizontally to its contents."
		aMorph
			width: aMorph submorphBounds width + 5; "font rendering bugfix"
			height: aMorph height + 1. "font rendering bugfix"
		
		^ self].

	self itemOrientation = #horizontalMaxHeight ifTrue: [
		"All submorphs vertically centered."
		
		aMorph height: (aMorph submorphs detectMax: [:m | m height]) height.
				
		"Manual layouting."
		offset := (aMorph left + 3) @ 1.
		aMorph submorphs do: [:m |
			m left: offset x.
			offset := offset + ((m width + 2) @ 0).
			m top: aMorph top - (m height - aMorph height // 2) + offset y].
	
		"Expand item horizontally to its contents."
		aMorph
			width: aMorph submorphBounds width + 5; "font rendering bugfix"
			height: aMorph height + 1. "font rendering bugfix"
		
		^ self].
	
	self itemOrientation = #vertical ifTrue: [
		aMorph width: aMorph submorphs last width + 10.
			
		"Manual layouting."
		offset := aMorph top + 3.
		aMorph submorphs do: [:m |
			m top: offset.
			offset := offset + m height + 2.
			m left: (aMorph left - (m width - aMorph width // 2))].
	
		aMorph height: aMorph submorphBounds height + 2].