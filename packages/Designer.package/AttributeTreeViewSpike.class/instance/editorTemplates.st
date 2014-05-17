accessing
editorTemplates

	^ editorTemplates ifNil: [
		editorTemplates := IdentityDictionary new.
	
		editorTemplates
			at: Rectangle put: [UiLineEdit new hResizing: #spaceFill;
				converter: [:raw | | result |
					result := [Compiler evaluate: raw asString] on: Error do: [nil].
					(result isKindOf: Rectangle) ifTrue: [result] ifFalse: [0@0 corner: 0@0]]];
			at: Object put: [UiLineEdit new hResizing: #spaceFill;
				converter: [:raw | [Compiler evaluate: raw asString] on: Error do: [nil]]];
			at: Form put: [UiPushButton new hResizing: #spaceFill; text: 'Choose...'];
			at: Boolean put: [ UiLineEdit new hResizing: #spaceFill; converter: [:raw | (({ 'true' . 'false' } indexOf: (raw asString)) > 0) ifTrue: [raw] ifFalse: [false]] ];
			at: Point put: [UiLineEdit new hResizing: #spaceFill;
				converter: [:raw | | result |
					result := [Compiler evaluate: raw asString] on: Error do: [nil].
					(result isKindOf: Point) ifTrue: [result] ifFalse: [0@0]]];
			at: String put: [UiLineEdit new hResizing: #spaceFill];
			at: Integer put: [UiLineEdit new hResizing: #spaceFill;
				converter: [:raw | raw asString asInteger ifNil: [0]]];
			at: Float put: [UiLineEdit new hResizing: #spaceFill;
				converter: [:raw | [(Float readFrom: raw asString readStream)] on: Error do: [:e | 0.0]]];
			at: Collection put: [:node | UiLineEdit new hResizing: #spaceFill;
				converter: [:rawString | (((node at: #possibleValues) indexOf: (rawString asString asSymbol)) > 0) ifTrue: [rawString] ifFalse: [node at: #propertyValue]]]. 
			
			^ editorTemplates
			]