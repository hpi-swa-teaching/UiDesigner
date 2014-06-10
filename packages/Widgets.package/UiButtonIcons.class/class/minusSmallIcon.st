accessing
minusSmallIcon

	^ Icons
		at: #minusSmallIcon
		ifAbsentPut:[self minusSmallIconContents].