building
doLayoutFor: aMorph

	| offset |
	aMorph submorphs last isTextMorph
		ifTrue: [ | fontHeight |
			fontHeight := aMorph submorphs last textStyle defaultFont height + 4.
			(fontHeight * 2) < aMorph submorphs last height
				"More than one line?"
				ifTrue: [aMorph height: aMorph submorphs last height]
				ifFalse: [aMorph height: fontHeight]]
		ifFalse: [
			aMorph height: aMorph submorphs last height].
	
	"Manual layouting."
	offset := (aMorph left + 3) @ 1.
	aMorph submorphs do: [:m |
		m left: offset x.
		offset := offset + ((m width + 2) @ 0).
		m top: aMorph top - (m height - aMorph height // 2) + offset y + 2].

	"Expand item horizontally to its contents."
	aMorph
		width: aMorph submorphBounds width + 5; "font rendering bugfix"
		height: aMorph height + 1. "font rendering bugfix"