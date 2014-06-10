formatting
toText: aString
	"Parse all known HTML attributes in the given string to text attributes."
	
	^ [Text string: (self parseString: (aString copyReplaceAll: '<br>' with: String cr)) runs: runArray] 
		on: Error
		do: [:e | aString asText]