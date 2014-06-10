building
doLayoutFor: aMorph

	| offset |

	(self itemOrientation = #horizontal or: [self itemOrientation = #horizontalMaxHeight]) ifTrue: [
		| formHeight |
		formHeight := aMorph form ifNil: [0] ifNotNil: [:f | f height].
		self itemOrientation = #horizontalMaxHeight
			ifTrue: [aMorph height: (aMorph font height max: formHeight)]
			ifFalse: [aMorph height: aMorph font height].
				
		"Manual layouting."
		offset := 3 @ 1.
		aMorph form ifNotNil: [
			aMorph formPosition: (offset + (0@(aMorph height - aMorph form height // 2))).
			offset := offset + ((aMorph form width + 2) @ 0)].
		
		aMorph label ifNotNil: [
			aMorph labelPosition: (offset + (0@(aMorph height - aMorph font height // 2))).
			offset := offset + (((aMorph font widthOfString: aMorph label) + 2) @ 0)].
		
		"Expand item horizontally to its contents."
		aMorph
			width: offset x; "font rendering bugfix"
			height: aMorph height + 1. "font rendering bugfix"
		
		^ self].
		
	self itemOrientation = #vertical ifTrue: [
		| formWidth labelWidth |
		formWidth := aMorph form ifNil: [0] ifNotNil: [:f | f width].
		labelWidth := aMorph label ifNil: [0] ifNotNil: [:l | aMorph font widthOfString: l].
		
		aMorph width: (formWidth max: labelWidth) + 10.
			
		"Manual layouting."
		offset := 3.
		aMorph form ifNotNil: [
			aMorph formPosition: (aMorph width - formWidth // 2)@offset.
			offset := offset + aMorph form height + 2].
		
		aMorph label ifNotNil: [
			aMorph labelPosition: (aMorph width - labelWidth // 2)@offset.
			offset := offset + aMorph font height + 2].		
		
		aMorph height: offset].