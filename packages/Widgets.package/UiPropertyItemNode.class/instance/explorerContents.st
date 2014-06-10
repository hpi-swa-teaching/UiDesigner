dictionary
explorerContents

	^ {
		ObjectExplorerWrapper
			with: children
			name: '__children'
			model: self}, super explorerContents