expand/collapse - private
expandAllIndicesSilently: someModelIndices

	someModelIndices
		select: [:index | index hasChildren]
		thenDo: [:index |
		(self expandIndexSilently: index) in: [:newRows |
			self expandAllIndicesSilently: (newRows gather: [:group |
				group value collect: [:row | row first "column" key "indexToItem"]])]].