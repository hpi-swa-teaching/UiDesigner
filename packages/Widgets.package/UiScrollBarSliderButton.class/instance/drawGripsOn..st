drawing
drawGripsOn: aCanvas

	1 to: 3 do: [:index |
		self
			drawGripOn: aCanvas
			at: (self orientation == #horizontal
				ifTrue: [self center x - 6 +
					(index - 1 * 3) @ self top]
				ifFalse: [self left @ (self center y - 6 +
					(index - 1 * 3))])]