parsing
parseString: anHtmlString

	| tag lookForNewTag result start end attrs escapeNextCharacter |
	lookForNewTag := true.
	tag := OrderedCollection new.
	result := OrderedCollection new.
	escapeNextCharacter := false.
	
	anHtmlString withIndexDo: [:character :index |
		escapeNextCharacter
			ifTrue: [result add: character. escapeNextCharacter := false]
			ifFalse: [
				character = $\
					ifTrue: [offset := offset + 1. escapeNextCharacter := true]
					ifFalse: [
						character = $< ifTrue: [lookForNewTag := false].
						character = $> ifTrue: [lookForNewTag := true].
		
						(lookForNewTag and: [character ~= $>])
							ifTrue: [result add: character]
							ifFalse: [tag add: character. offset := offset + 1]..
			
						(tag notEmpty and: [tag last = $>]) ifTrue: [
							"Full tag like <b> or </b> found."
							|tmp|
							tmp := String withAll: tag.
							tmp second ~= $/
								ifTrue: [self processStartTag: tmp pos: index]
								ifFalse: [self processEndTag: tmp pos: index].			
							tag := OrderedCollection new.
							lookForNewTag := true]]]].
	
	"Add last run."
	
	"Set end index."
	runStack top at: 3 put: anHtmlString size - offset.
	
	"Write to run array."
	start := runStack top second.
	end := runStack top third.
	attrs := runStack top first.
	UiPlatform current
		runArray: runArray
		add: attrs
		withOccurrences: end - start + 1.
	
	^ String withAll: result