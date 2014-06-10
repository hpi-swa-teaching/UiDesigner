accessing - private
preferredHeight

	^ (self scrollingLimit * self textMorph lineHeight)
		+ self margins top + self margins bottom