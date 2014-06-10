comparing
hash

	^ (super hash
		bitXor: self group hash)
		bitXor: self parent hash