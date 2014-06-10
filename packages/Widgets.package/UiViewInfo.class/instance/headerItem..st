accessing
headerItem: aHeaderItem
	
	headerItem := aHeaderItem.
	aHeaderItem
		resizeable: self resizeMode == #rigid;
		resize: self pixelSize.