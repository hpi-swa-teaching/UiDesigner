accessing
icon0418Small

	^ Icons
		at: #diagonaIcon0418Small
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self icon0418SmallContents readStream) ].