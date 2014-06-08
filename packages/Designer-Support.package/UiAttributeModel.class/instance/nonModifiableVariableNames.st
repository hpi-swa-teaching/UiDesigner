accessing
nonModifiableVariableNames

	^ nonModifiableVariableNames ifNil: [
		nonModifiableVariableNames := { 'submorphs' . 'owner' . 'extension' } ]