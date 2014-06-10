accessing
plusSmallIcon

	^ Icons
		at: #plusSmallIcon
		ifAbsentPut:[self plusSmallIconContents].