add/remove - inserting
insertItemRows: data
	"group -> row -> column -> (model index -> item/morph)"
	
	| firstRow firstRowIndex newRowsCount newItems tail rowOffset indent |
	
	"Step 1 - Add as much rows as needed."
	firstRow := data first value
		ifEmpty: [self ensureFirstRowFor: (data first key valueOfProperty: #parentModelIndex)]
		ifNotEmpty: [self ensureRowFor: data first value "group" first "row" first "column" key "model index"].

	firstRowIndex := rows indexOf: firstRow.
	newRowsCount := (data inject: 0 into: [:sum :group | sum + 1 "separator for each group" + group value size]).

	newRowsCount - 1 "first row already there"
		timesRepeat: [rows add: UiViewRowInfo new afterIndex: firstRowIndex].
	
	"Step 2 - Prepare items."
	newItems := Array new: (newRowsCount - data size "see #insertGroupSeparatorAt:") * self columnCount.
	tail := 1. "Next slot to fill. Just real items. No group separators."
	rowOffset := 0.
	indent := nil.
	data withIndexDo: [:group :groupIndex |
		self
			insertGroupSeparator: group key "separator item"
			at: firstRowIndex + rowOffset.
		rowOffset := rowOffset + 1 "separator row".
		
		group value do: [:itemRow | 
			itemRow do: [:indexToItem | | col |
				newItems
					at: tail
					put: indexToItem value.
				tail := tail + 1.
					
				(rows at: firstRowIndex + rowOffset)
					items add: indexToItem value. "column-wise filing left-to-right"
				
				col := self columnFor: indexToItem key.
				col items
					add: indexToItem value
					beforeIndex: firstRowIndex + rowOffset.
			
				"Same indent for all items."
				indent ifNil: [indent := self
					calculateIndentFor: indexToItem value
					atIndex: indexToItem key
					column: col].
			
				indexToItem value
					setProperty: #modelIndex toValue: indexToItem key;
					setProperty: #isExpanded toValue: false;
					setProperty: #hasChildren toValue: indexToItem key hasChildren;
					setProperty: #indent toValue: (indexToItem key column = 1 ifTrue: [indent] ifFalse: [0])].
			rowOffset := rowOffset + 1. "next row"].
		indent ifNotNil: [:i | group key setProperty: #indent toValue: i]].
	
	"Step 3 - Add new submorphs."
	self addAllMorphs: newItems.