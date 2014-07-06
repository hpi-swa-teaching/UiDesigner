open
logo

	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self logoContents readStream)