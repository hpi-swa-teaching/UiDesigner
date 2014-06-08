private - inst vars
instVarsString

	| stream |
	stream := WriteStream on: ''.
	self namedInstVars
		do: [:instVar | stream nextPutAll: (instVar at: #name)]
		separatedBy: [stream nextPut: Character space].
		
	^ stream contents
	