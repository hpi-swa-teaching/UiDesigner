drawing
drawHelpTextOn: aCanvas

	(self dragDropSpec isNil or: [self dragDropSpec helpText isNil]) ifTrue: [^ self].
	(self rows anySatisfy: [:rowInfo | rowInfo visible])
		ifTrue: [^ self].

	self dragDropSpec helpText isString ifTrue: [  
		| font |	
		font := UiPlatform current standardListFont.

		^ aCanvas
			drawString: self dragDropSpec helpText asString
			in: (self topLeft + (5@0) extent: 500 @ font height)
			font: font
			color: (Color gray: 0.7)].
		
	self dragDropSpec helpText isText ifTrue: [
		| m |
		m := self dragDropSpec helpText asMorph.
		m topLeft: self topLeft + (5@0).
		m fullDrawOn: aCanvas].