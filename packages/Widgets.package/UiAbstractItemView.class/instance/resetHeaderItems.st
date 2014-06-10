model - initialization
resetHeaderItems
	
	"Vertical Header - just a default implementation"
	"Layout/Height is wrong and increases height of top-level rows somehow... See UiItemRowInfo>>#optimalSize."
	"(1 to: self model childCount) do: [:row | | item |
		item := UiViewHeaderItem new orientation: #vertical.
		item addMorph: row asString asText asMorph lock.
		self viewport setHeaderItem: item atRow: row.
		
		self connect: item signal: #resized: toSelector: #setHeightForRow:to: pattern: {#=. row. 1}.
		self connect: item signal: #resizedToShrinkWrap toSelector: #setOptimalHeightForRow: pattern: {#=. row}.]."
	
	"Horizontal Header"
	self columnSpecs withIndexDo: [:spec :id | | item |
		item := UiViewHeaderItem new orientation: #horizontal.
		item addMorph: spec headerItem.
		self viewport setHeaderItem: item atColumn: id.
		
		self connect: item signal: #resized: toSelector: #setWidthForColumn:to: pattern: {#=. id. 1}.
		self connect: item signal: #resizedToShrinkWrap toSelector: #setOptimalWidthForColumn: pattern: {#=. id}].