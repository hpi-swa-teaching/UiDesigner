item model - signals
propertyChanged: aSymbol
	"A property that may be used in an item view via a colum spec has changed and needs to be updated. If you are the invisible root, all corresponding colums (resp. visible nodes) will be updated and not just single nodes."

	self propertiesChanged: {aSymbol}.