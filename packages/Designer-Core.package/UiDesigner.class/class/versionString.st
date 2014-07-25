version
versionString

	^ ((Smalltalk at: #ConfigurationOfDesigner ifAbsent: [])
		ifNotNil: [:conf | [conf project currentVersion] on: Error do: []]) versionNumber asString