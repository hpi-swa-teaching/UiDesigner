code generation
generateClass
	self superClass subclass: self generatedClassName
		instanceVariableNames: self instVars
		classVariableNames: self classVars
		poolDictionaries: ''
		category: self category asString.