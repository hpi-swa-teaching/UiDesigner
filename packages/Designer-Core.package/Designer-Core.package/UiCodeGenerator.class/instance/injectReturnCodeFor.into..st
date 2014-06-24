codeInjection
injectReturnCodeFor: aMorph into: newStream.
	
	newStream crtab; 
				nextPutAll: '^ ', (aMorph valueOfProperty: #objectNameTemp), '.'.