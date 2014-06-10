initialization
limitColumnCount: numberOfColumns
	"Remove unnecessary columns."
	
	self ensureColumnCount: numberOfColumns.
	columns := columns first: numberOfColumns.