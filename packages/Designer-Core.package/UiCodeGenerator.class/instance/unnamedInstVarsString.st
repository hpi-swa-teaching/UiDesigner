private - inst vars
unnamedInstVarsString

	| stream |
	stream := WriteStream on: ''.
	self unnamedInstVars
		do: [:instVar | stream nextPutAll: (instVar at: #name)]
		separatedBy: [stream nextPut: Character space].
		
	^ stream contents
	